`timescale 1ns / 1ps



import axi_vip_pkg::*;
import nmp_ip_test_axi_vip_0_0_pkg::*;

module nmp_ip_tb();

localparam logic [31:0] op_reg         = 0 * 4,
                        addr_reg       = 1 * 4,
                        status_reg     = 2 * 4,
                        data_read_reg  = 3 * 4,
                        data_write_reg = 4 * 4,
                        veca_addr_reg  = 5 * 4,
                        vecb_addr_reg  = 6 * 4,
                        vecr_addr_reg  = 7 * 4,
                        vec_len_reg    = 8 * 4;
                        
localparam logic [31:0] wait_op = 0,
                        read_op = 1,
                        write_op = 2,
                        add_op = 3;

bit clk = 0, rstn = 1;

xil_axi_resp_t resp;

logic [31:0] reg_addr, reg_data, read_data, base_addr = 32'h00;

int error_count = 0;
time start_t = 0;

localparam int vec_len = 16;

logic [31:0] static_srca [vec_len-1:0] = {32'h00, 32'h01, 32'h02, 32'h03, 32'h04, 32'h05, 32'h06, 32'h07,
                                   32'h08, 32'h09, 32'h0A, 32'h0B, 32'h0C, 32'h0D, 32'h0E, 32'h0F};
logic [31:0] static_srcb [vec_len-1:0] = {32'h00, 32'h10, 32'h20, 32'h30, 32'h40, 32'h50, 32'h60, 32'h70,
                                   32'h80, 32'h90, 32'hA0, 32'hB0, 32'hC0, 32'hD0, 32'hE0, 32'hF0};

nmp_ip_test_wrapper nmp_ip_inst(.clk(clk), .rstn(rstn));

localparam integer mem_bits = nmp_ip_inst.nmp_ip_test_i.nmp_axil4l_ip_0.inst.RAM_ADDR_BITS;
localparam integer mem_size = 2**mem_bits;
localparam integer rd_vec_l = mem_size / 3;

localparam int verify_range = 4, start_addr = 8, addra = 0, addrb = rd_vec_l, addrr = 2 * rd_vec_l;

logic [31:0] rd_srca [rd_vec_l-1:0];
logic [31:0] rd_srcb [rd_vec_l-1:0];
logic [31:0] rd_srcr [rd_vec_l-1:0];

int rd_write_val = 0, cell_pairs = 0;

nmp_ip_test_axi_vip_0_0_mst_t nmp_master_agent;

always #5ns clk = ~clk;

initial begin

    $timeformat(-9, 0, " ns", 10);

    nmp_master_agent = new("nmp vip",  nmp_ip_inst.nmp_ip_test_i.axi_vip_0.inst.IF);
    nmp_master_agent.start_master();
    
    clock_cycles(10);
    rstn = 0;
    clock_cycles(10);
    rstn = 1;
    clock_cycles(10);

//`define AXI_VAL
`ifdef AXI_VAL
begin : validate_axi
    int reg_count = 9;
    
    for(int i = 0; i < reg_count * 4; i += 4) begin

        reg_addr = i;
        reg_data = i + 1;
        
        nmp_master_agent.AXI4LITE_WRITE_BURST(base_addr + reg_addr, 0, reg_data, resp);
        
        clock_cycles(10);
    end
    
    reg_data = 0;
    
    for(int i = 0; i < reg_count * 4; i += 4) begin

        reg_addr = i;
        
        nmp_master_agent.AXI4LITE_READ_BURST(base_addr + reg_addr, 0, reg_data, resp);
        
        clock_cycles(10);
    end

end
$finish;
`endif

begin : verify_ip
    

    read_data = 'bz;

    set_wait();
    
    for(int i = start_addr; i < start_addr + verify_range; i ++) begin
        write_to(i, i);
    end 
        
    for(int i = start_addr; i < start_addr + verify_range; i ++) begin
        read_from(i);
    end
    
    read_data = 'bz;
    
    fill_vector(addra, static_srca);
    fill_vector(addrb, static_srcb);
    
    start_t = $time;
    add_vectors(addra, addrb, addrr, vec_len);
    $write("static check: add %d cell pairs took %t and ", vec_len, $time - start_t);
    
    for(int i = 0; i < vec_len; i ++) begin
        
        read_from(addrr + i);
        
        if(read_data != static_srca[i] + static_srcb[i])
            error_count ++;
        
    end
    
    assert (error_count == 0) $display("passed");
    else $error("failed");
    
    random_tests();
    
    clock_cycles(10);
    
end

$finish;

end

task random_tests();

    randomize_srcs_content_and_write_to_mem();
    compute_reference();
    
    for(int i = 0; i < mem_bits - 1; i ++) begin
    
        cell_pairs = 2**i;
        
        $display("start add %d cell pairs", cell_pairs);
        
        start_t = $time;
        add_vectors(addra, addrb, addrr, cell_pairs);
        $write("random check: add %d cell pairs took %t and ", cell_pairs, $time - start_t);
        
        error_count = 0;
        
        for(int i = 0; i < cell_pairs; i ++) begin
            
            read_from(addrr + i);
            
            if(read_data != rd_srcr[i])
                error_count ++;
            
        end
        
        assert (error_count == 0) $display("passed");
        else $error("failed");
        
    
    end
    
endtask

task compute_reference();
    for(int i = 0; i < rd_vec_l; i ++) begin
        rd_srcr[i] = rd_srca[i] + rd_srcb[i];
    end
endtask

task randomize_srcs_content_and_write_to_mem();

    for(int i = 0; i < rd_vec_l; i ++) begin
        
        rd_write_val = $random();
        rd_srca[i] = rd_write_val;
        write_to(addra + i, rd_write_val);
        
        rd_write_val = $random();
        rd_srcb[i] = rd_write_val;
        write_to(addrb + i, rd_write_val);
        
    end

endtask

task clock_cycles(input int n);
    repeat(n)
        @(posedge clk);
endtask

task wait_for_completion();

    reg_addr = status_reg;
    
    do begin
        clock_cycles(5);
        nmp_master_agent.AXI4LITE_READ_BURST(base_addr + reg_addr, 0, reg_data, resp);
    end while(~reg_data[0]);

endtask

task set_wait();

    reg_addr = op_reg;
    reg_data = wait_op;
    nmp_master_agent.AXI4LITE_WRITE_BURST(base_addr + reg_addr, 0, reg_data, resp);

endtask

task read_from(input logic [31:0] addr);

    reg_addr = addr_reg;
    reg_data = addr;
    nmp_master_agent.AXI4LITE_WRITE_BURST(base_addr + reg_addr, 0, reg_data, resp);
    
    reg_addr = op_reg;
    reg_data = read_op;
    nmp_master_agent.AXI4LITE_WRITE_BURST(base_addr + reg_addr, 0, reg_data, resp);
    
    wait_for_completion();
    
    reg_addr = data_read_reg;
    nmp_master_agent.AXI4LITE_READ_BURST(base_addr + reg_addr, 0, read_data, resp);
    
    set_wait();

endtask

task write_to(input logic [31:0] addr, input logic [31:0] data);

    reg_addr = addr_reg;
    reg_data = addr;
    nmp_master_agent.AXI4LITE_WRITE_BURST(base_addr + reg_addr, 0, reg_data, resp);
    
    reg_addr = data_write_reg;
    reg_data = data;
    nmp_master_agent.AXI4LITE_WRITE_BURST(base_addr + reg_addr, 0, reg_data, resp);
    
    reg_addr = op_reg;
    reg_data = write_op;
    nmp_master_agent.AXI4LITE_WRITE_BURST(base_addr + reg_addr, 0, reg_data, resp);
    
    wait_for_completion();
    set_wait();

endtask

task fill_vector(input logic [31:0] addr, input logic [31:0] src [vec_len-1:0]);
    for(int i = 0; i < vec_len; i ++) begin
        write_to(addr + i, src[i]);
    end
endtask

task add_vectors(input logic [31:0] addra, input logic [31:0] addrb, input logic [31:0] addrr, input int len);

    reg_addr = veca_addr_reg;
    reg_data = addra;
    nmp_master_agent.AXI4LITE_WRITE_BURST(base_addr + reg_addr, 0, reg_data, resp);
    
    reg_addr = vecb_addr_reg;
    reg_data = addrb;
    nmp_master_agent.AXI4LITE_WRITE_BURST(base_addr + reg_addr, 0, reg_data, resp);
    
    reg_addr = vecr_addr_reg;
    reg_data = addrr;
    nmp_master_agent.AXI4LITE_WRITE_BURST(base_addr + reg_addr, 0, reg_data, resp);

    reg_addr = vec_len_reg;
    reg_data = len;
    nmp_master_agent.AXI4LITE_WRITE_BURST(base_addr + reg_addr, 0, reg_data, resp);
    
    reg_addr = op_reg;
    reg_data = add_op;
    nmp_master_agent.AXI4LITE_WRITE_BURST(base_addr + reg_addr, 0, reg_data, resp);
    
    wait_for_completion();
    set_wait();
    
endtask

endmodule
