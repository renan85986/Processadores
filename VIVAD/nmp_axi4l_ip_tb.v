`timescale 1ns / 1ps

module tb_nmp_wrapper;
    reg ACLK;
    reg ARESETN;
    reg [7:0] S_AXI_AWADDR;
    reg S_AXI_AWVALID;
    wire S_AXI_AWREADY;
    reg [31:0] S_AXI_WDATA;
    reg [3:0] S_AXI_WSTRB;
    reg S_AXI_WVALID;
    wire S_AXI_WREADY;
    wire [1:0] S_AXI_BRESP;
    wire S_AXI_BVALID;
    reg S_AXI_BREADY;
    reg [7:0] S_AXI_ARADDR;
    reg S_AXI_ARVALID;
    wire S_AXI_ARREADY;
    wire [31:0] S_AXI_RDATA;
    wire [1:0] S_AXI_RRESP;
    wire S_AXI_RVALID;
    reg S_AXI_RREADY;

    // Instantiate the DUT (Device Under Test)
    nmp_wrapper uut (
        .ACLK(ACLK),
        .ARESETN(ARESETN),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_BRESP(S_AXI_BRESP),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RRESP(S_AXI_RRESP),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_RREADY(S_AXI_RREADY)
    );

    // Clock generation
    initial begin
        ACLK = 0;
        forever #5 ACLK = ~ACLK;
    end

    // Stimulus process
    initial begin
        // Reset the DUT
        ARESETN = 0;
        S_AXI_AWADDR = 0;
        S_AXI_AWVALID = 0;
        S_AXI_WDATA = 0;
        S_AXI_WSTRB = 0;
        S_AXI_WVALID = 0;
        S_AXI_BREADY = 0;
        S_AXI_ARADDR = 0;
        S_AXI_ARVALID = 0;
        S_AXI_RREADY = 0;
        #100;
        
        ARESETN = 1;
        #100;

        // Test 4x4 matrix addition
        test_matrix_addition(4);

        // Test 8x8 matrix addition
        test_matrix_addition(8);

        // Test 16x16 matrix addition
        test_matrix_addition(16);

        // End of test
        #100;
        $stop;
    end

    task test_matrix_addition;
        input integer size;
        integer i, j;
        begin
            // Write data to BRAM A
            for (i = 0; i < size; i = i + 1) begin
                for (j = 0; j < size; j = j + 1) begin
                    S_AXI_AWADDR = i * size + j;
                    S_AXI_AWVALID = 1;
                    S_AXI_WDATA = i * size + j;
                    S_AXI_WSTRB = 4'hF;
                    S_AXI_WVALID = 1;
                    #10;
                    S_AXI_AWVALID = 0;
                    S_AXI_WVALID = 0;
                    wait(S_AXI_BVALID);
                    S_AXI_BREADY = 1;
                    #10;
                    S_AXI_BREADY = 0;
                end
            end

            // Write data to BRAM B
            for (i = 0; i < size; i = i + 1) begin
                for (j = 0; j < size; j = j + 1) begin
                    S_AXI_AWADDR = (MEM_SIZE / 2) + (i * size + j);
                    S_AXI_AWVALID = 1;
                    S_AXI_WDATA = (i * size + j) * 2;
                    S_AXI_WSTRB = 4'hF;
                    S_AXI_WVALID = 1;
                    #10;
                    S_AXI_AWVALID = 0;
                    S_AXI_WVALID = 0;
                    wait(S_AXI_BVALID);
                    S_AXI_BREADY = 1;
                    #10;
                    S_AXI_BREADY = 0;
                end
            end

            // Read and check results
            for (i = 0; i < size; i = i + 1) begin
                for (j = 0; j < size; j = j + 1) begin
                    S_AXI_ARADDR = i * size + j;
                    S_AXI_ARVALID = 1;
                    #10;
                    S_AXI_ARVALID = 0;
                    wait(S_AXI_RVALID);
                    S_AXI_RREADY = 1;
                    if (S_AXI_RDATA !== (i * size + j) + ((i * size + j) * 2)) begin
                        $display("Error: Expected %d, got %d at (%d, %d)", (i * size + j) + ((i * size + j) * 2), S_AXI_RDATA, i, j);
                    end
                    #10;
                    S_AXI_RREADY = 0;
                end
            end

            $display("Matrix addition of size %dx%d passed", size, size);
        end
    endtask

endmodule
