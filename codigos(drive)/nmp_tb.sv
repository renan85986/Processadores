`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/15/2024 05:28:13 PM
// Design Name: 
// Module Name: nmp_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module nmp_tb();

`define PS7 nmp_tb.nmp_inst.nmp_i.processing_system7_0.inst

localparam logic [31:0] base_addr = 32'h4000_0000;

localparam logic [31:0] op_reg         = 0 * 4,
                        addr_reg       = 1 * 4,
                        status_reg     = 2 * 4,
                        data_read_reg  = 3 * 4,
                        data_write_reg = 4 * 4,
                        veca_addr_reg  = 5 * 4,
                        vecb_addr_reg  = 6 * 4,
                        vecr_addr_reg  = 7 * 4,
                        vec_len_reg    = 8 * 4;
                        
localparam logic [31:0] wait_op  = 0,
                        read_op  = 1,
                        write_op = 2,
                        add_op   = 3;
                        
localparam int mem_bits = 12;
localparam int mem_size = 2**mem_bits;
localparam int max_vec_l = mem_size / 3;

int output_fd;

logic [31:0] rd_srca [max_vec_l-1:0];
logic [31:0] rd_srcb [max_vec_l-1:0];
logic [31:0] rd_srcr [max_vec_l-1:0];

logic tb_ACLK;
logic tb_ARESETn;

logic [31:0] reg_addr, reg_data;

logic [31:0] read_data;
logic resp;

wire temp_clk;
wire temp_rstn;

initial begin
    tb_ACLK = 1'b0;
end

always #5 tb_ACLK = !tb_ACLK;

assign temp_clk = tb_ACLK;
assign temp_rstn = tb_ARESETn;

initial begin

    $timeformat(-9, 0, " ns", 10);
    
    output_fd = $fopen("/home/lsi2515/nmp/nmp.srcs/sim_1/new/output_file.txt", "w");
    if(output_fd == 0) begin
        $display("couldn't open file"); 
        $finish;
    end
    
    clock_cycles(10);
    tb_ARESETn = 0;
    clock_cycles(10);
    tb_ARESETn = 1;
    clock_cycles(10);
    
    `PS7.fpga_soft_reset(32'h1);
    clock_cycles(20);
    `PS7.fpga_soft_reset(32'h0);
    clock_cycles(20);
    
    `PS7.set_debug_level_info(1'b0);
    
    sanity_tests();
    random_tests();
    timing_tests();
    
    $fclose(output_fd);
    $finish;
    
end

nmp_wrapper nmp_inst
   (.DDR_addr(),
    .DDR_ba(),
    .DDR_cas_n(),
    .DDR_ck_n(),
    .DDR_ck_p(),
    .DDR_cke(),
    .DDR_cs_n(),
    .DDR_dm(),
    .DDR_dq(),
    .DDR_dqs_n(),
    .DDR_dqs_p(),
    .DDR_odt(),
    .DDR_ras_n(),
    .DDR_reset_n(),
    .DDR_we_n(),
    .FIXED_IO_ddr_vrn(),
    .FIXED_IO_ddr_vrp(),
    .FIXED_IO_mio(),
    .FIXED_IO_ps_clk(temp_clk),
    .FIXED_IO_ps_porb(temp_rstn),
    .FIXED_IO_ps_srstb(temp_rstn));
    
task sanity_tests();
    static int addra = 2, addrb = 4, addrr = 8, len = 1, vala = 16, valb = 32;
    
    $fwrite(output_fd, "sanity tests");
    
    write_to(addra, vala);
    write_to(addrb, valb);
    
    read_from(addra);
    read_from(addra);

    add_vectors(addra, addrb, addrr, len);
    
    read_from(addrr);
    
    $stop;
    
    assert(read_data == vala + valb)
    else $error("sanity failed");
    
    $fwrite(output_fd, "passed");
    
endtask
    
task timing_tests();
    static int addra = 0, addrb = max_vec_l, addrr = 2 * max_vec_l;
    int cell_pairs;
    time start_t, end_t;
    
    $fwrite(output_fd, "timing tests");
    
    for(int i = 0; i < mem_bits - 1; i ++) begin
    
        cell_pairs = 2**i;
        
        $fwrite(output_fd, "start add %d cell pairs", cell_pairs);
        
        start_t = $time;
        add_vectors(addra, addrb, addrr, cell_pairs);
        end_t = $time;
        $fwrite(output_fd, "timing: add %d cell pairs took %t", cell_pairs, end_t - start_t);
        
    end
    
endtask

task random_tests();
    static int test_qtty = 16;
    int addra, addrb, addrr, len;

    $fwrite(output_fd, "random tests: random addresses, values and lengths");
    
    for(int i = 0; i < test_qtty; i ++) begin
    
        len = $urandom_range(max_vec_l);
        addra = $urandom_range(1 * max_vec_l - len, 0 * max_vec_l);
        addrb = $urandom_range(2 * max_vec_l - len, 1 * max_vec_l);
        addrr = $urandom_range(3 * max_vec_l - len, 2 * max_vec_l);
        
        randomize_srcs_content_and_write_to_mem(addra, addrb, addrr, len);
        compute_reference(len);
        
        for(int j = 0; j < len; j ++) begin
            
            read_from(addrr + j);
            
            assert(read_data == rd_srcr[j])
            else $error("reference: %d, read: %d", rd_srcr[j], read_data);
            
        end
    
    end
    
    $fwrite(output_fd, "passed");

endtask

task compute_reference(input int len);

    for(int i = 0; i < len; i ++) begin
    
        rd_srcr[i] = rd_srca[i] + rd_srcb[i];
        
    end
    
endtask

task randomize_srcs_content_and_write_to_mem(input int addra, input int addrb, input int addrr, input int len);
    int rd_write_val;

    for(int i = 0; i < len; i ++) begin
        
        rd_write_val = $random;
        rd_srca[i] = rd_write_val;
        write_to(addra + i, rd_write_val);
        
        rd_write_val = $random;
        rd_srcb[i] = rd_write_val;
        write_to(addrb + i, rd_write_val);
        
    end

endtask

task clock_cycles(input int n);
    repeat(n)
        @(posedge tb_ACLK);
endtask

task wait_for_completion();

    reg_addr = status_reg;
    
    do begin
        clock_cycles(5);
        `PS7.read_data(base_addr + reg_addr, 4, reg_data, resp);
    end while(~reg_data[0]);

endtask

task set_wait();

    reg_addr = op_reg;
    reg_data = wait_op;
    `PS7.write_data(base_addr + reg_addr, 4, reg_data, resp);

endtask

task read_from(input logic [31:0] addr);

    reg_addr = addr_reg;
    reg_data = addr;
    `PS7.write_data(base_addr + reg_addr, 4, reg_data, resp);
    
    reg_addr = op_reg;
    reg_data = read_op;
    `PS7.write_data(base_addr + reg_addr, 4, reg_data, resp);
    
    wait_for_completion();
    
    reg_addr = data_read_reg;
    `PS7.read_data(base_addr + reg_addr, 4, read_data, resp);
    
    set_wait();

endtask

task write_to(input logic [31:0] addr, input logic [31:0] data);

    reg_addr = addr_reg;
    reg_data = addr;
    `PS7.write_data(base_addr + reg_addr, 4, reg_data, resp);
    
    reg_addr = data_write_reg;
    reg_data = data;
    `PS7.write_data(base_addr + reg_addr, 4, reg_data, resp);
    
    reg_addr = op_reg;
    reg_data = write_op;
    `PS7.write_data(base_addr + reg_addr, 4, reg_data, resp);
    
    wait_for_completion();
    set_wait();

endtask

task add_vectors(input logic [31:0] addra, input logic [31:0] addrb, input logic [31:0] addrr, input int len);

    reg_addr = veca_addr_reg;
    reg_data = addra;
    `PS7.write_data(base_addr + reg_addr, 4, reg_data, resp);
    
    reg_addr = vecb_addr_reg;
    reg_data = addrb;
    `PS7.write_data(base_addr + reg_addr, 4, reg_data, resp);
    
    reg_addr = vecr_addr_reg;
    reg_data = addrr;
    `PS7.write_data(base_addr + reg_addr, 4, reg_data, resp);

    reg_addr = vec_len_reg;
    reg_data = len;
    `PS7.write_data(base_addr + reg_addr, 4, reg_data, resp);
    
    reg_addr = op_reg;
    reg_data = add_op;
    `PS7.write_data(base_addr + reg_addr, 4, reg_data, resp);
    
    wait_for_completion();
    set_wait();
    
endtask

endmodule
