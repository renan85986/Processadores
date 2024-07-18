`default_nettype none
module	nmp_axil4l_ip #(
		//
		// Size of the AXI-lite bus.  These are fixed, since 1) AXI-lite
		// is fixed at a width of 32-bits by Xilinx def'n, and 2) since
		// we only ever have 4 configuration words.
		parameter			C_AXI_ADDR_WIDTH = 8,
		localparam			C_AXI_DATA_WIDTH = 32,
		parameter	[0:0]	OPT_LOWPOWER     = 0,
		
		parameter RAM_WIDTH 		= 32,
		parameter RAM_ADDR_BITS 	= 12
	) (
		input	wire								S_AXI_ACLK,
		input	wire								S_AXI_ARESETN,
		//
		input	wire								S_AXI_AWVALID,
		output	wire								S_AXI_AWREADY,
		input	wire	[  C_AXI_ADDR_WIDTH-1:0]	S_AXI_AWADDR,
		input	wire	[					2:0]	S_AXI_AWPROT,
		//
		input	wire								S_AXI_WVALID,
		output	wire								S_AXI_WREADY,
		input	wire	[  C_AXI_DATA_WIDTH-1:0]	S_AXI_WDATA,
		input	wire	[C_AXI_DATA_WIDTH/8-1:0]	S_AXI_WSTRB,
		//
		output	wire								S_AXI_BVALID,
		input	wire								S_AXI_BREADY,
		output	wire	[					1:0]	S_AXI_BRESP,
		//
		input	wire								S_AXI_ARVALID,
		output	wire								S_AXI_ARREADY,
		input	wire	[  C_AXI_ADDR_WIDTH-1:0]	S_AXI_ARADDR,
		input	wire	[					2:0]	S_AXI_ARPROT,
		//
		output	wire								S_AXI_RVALID,
		input	wire								S_AXI_RREADY,
		output	wire	[  C_AXI_DATA_WIDTH-1:0]	S_AXI_RDATA,
		output	wire	[					1:0]	S_AXI_RRESP
	);

	////////////////////////////////////////////////////////////////////////
	//
	// Register/wire signal declarations
	////////////////////////////////////////////////////////////////////////
	//
	localparam	ADDRLSB = $clog2(C_AXI_DATA_WIDTH)-3;

	wire	i_reset = !S_AXI_ARESETN;

	wire									axil_write_ready;
	wire	[C_AXI_ADDR_WIDTH-ADDRLSB-1:0]	awskd_addr;
	//
	wire	[		 C_AXI_DATA_WIDTH-1:0]	wskd_data;
	wire 	[	   C_AXI_DATA_WIDTH/8-1:0]	wskd_strb;
	reg										axil_bvalid;
	//
	wire									axil_read_ready;
	wire	[C_AXI_ADDR_WIDTH-ADDRLSB-1:0]	arskd_addr;
	reg	    [		 C_AXI_DATA_WIDTH-1:0]	axil_read_data;
	reg										axil_read_valid;

	reg		[C_AXI_DATA_WIDTH-1:0]         op_reg,      addr_reg,    status_reg, data_read_reg,
                                   data_write_reg, veca_addr_reg, vecb_addr_reg, vecr_addr_reg,
                                      vec_len_reg;
                                      
	wire	[C_AXI_DATA_WIDTH-1:0] wskd_op_reg,         wskd_addr_reg,      wskd_status_reg,    wskd_data_read_reg,
	                               wskd_data_write_reg, wskd_veca_addr_reg, wskd_vecb_addr_reg, wskd_vecr_addr_reg,
	                               wskd_vec_len_reg;
	                               
	////////////////////////////////////////////////////////////////////////
	//
	// AXI-lite signaling
	//
	////////////////////////////////////////////////////////////////////////

	generate begin : SKIDBUFFER_WRITE
		wire	awskd_valid, wskd_valid;

		skidbuffer #(.OPT_OUTREG(0),
					.OPT_LOWPOWER(OPT_LOWPOWER),
					.DW(C_AXI_ADDR_WIDTH-ADDRLSB))
		axilawskid(//
					.i_clk(S_AXI_ACLK), .i_reset(i_reset),
					.i_valid(S_AXI_AWVALID), .o_ready(S_AXI_AWREADY),
					.i_data(S_AXI_AWADDR[C_AXI_ADDR_WIDTH-1:ADDRLSB]),
					.o_valid(awskd_valid), .i_ready(axil_write_ready),
					.o_data(awskd_addr));

		skidbuffer #(.OPT_OUTREG(0),
					.OPT_LOWPOWER(OPT_LOWPOWER),
					.DW(C_AXI_DATA_WIDTH+C_AXI_DATA_WIDTH/8))
		axilwskid(//
					.i_clk(S_AXI_ACLK), .i_reset(i_reset),
					.i_valid(S_AXI_WVALID), .o_ready(S_AXI_WREADY),
					.i_data({ S_AXI_WDATA, S_AXI_WSTRB }),
					.o_valid(wskd_valid), .i_ready(axil_write_ready),
					.o_data({ wskd_data, wskd_strb }));

		assign	axil_write_ready = awskd_valid && wskd_valid && (!S_AXI_BVALID || S_AXI_BREADY);
	end endgenerate

	initial	axil_bvalid = 0;
	always @(posedge S_AXI_ACLK) begin
        if (i_reset)
            axil_bvalid <= 0;
        else if (axil_write_ready)
            axil_bvalid <= 1;
        else if (S_AXI_BREADY)
            axil_bvalid <= 0;
    end

	assign	S_AXI_BVALID = axil_bvalid;
	assign	S_AXI_BRESP = 2'b00;

	generate begin : SKIDBUFFER_READ
		wire	arskd_valid;

		skidbuffer #(.OPT_OUTREG(0),
					.OPT_LOWPOWER(OPT_LOWPOWER),
					.DW(C_AXI_ADDR_WIDTH-ADDRLSB))
		axilarskid(//
					.i_clk(S_AXI_ACLK), .i_reset(i_reset),
					.i_valid(S_AXI_ARVALID), .o_ready(S_AXI_ARREADY),
					.i_data(S_AXI_ARADDR[C_AXI_ADDR_WIDTH-1:ADDRLSB]),
					.o_valid(arskd_valid), .i_ready(axil_read_ready),
					.o_data(arskd_addr));

		assign	axil_read_ready = arskd_valid && (!axil_read_valid || S_AXI_RREADY);
	end endgenerate

	initial	axil_read_valid = 1'b0;
	always @(posedge S_AXI_ACLK) begin
        if (i_reset)
            axil_read_valid <= 1'b0;
        else if (axil_read_ready)
            axil_read_valid <= 1'b1;
        else if (S_AXI_RREADY)
            axil_read_valid <= 1'b0;
    end

	assign	S_AXI_RVALID = axil_read_valid;
	assign	S_AXI_RDATA  = axil_read_data;
	assign	S_AXI_RRESP = 2'b00;

	// apply_wstrb(old_data, new_data, write_strobes)
	assign	wskd_op_reg         = apply_wstrb(op_reg,         wskd_data, wskd_strb);
	assign	wskd_addr_reg       = apply_wstrb(addr_reg,       wskd_data, wskd_strb);
	assign	wskd_status_reg     = apply_wstrb(status_reg,     wskd_data, wskd_strb);
	assign	wskd_data_read_reg  = apply_wstrb(data_read_reg,  wskd_data, wskd_strb);
	assign	wskd_data_write_reg = apply_wstrb(data_write_reg, wskd_data, wskd_strb);
    assign	wskd_veca_addr_reg  = apply_wstrb(veca_addr_reg,  wskd_data, wskd_strb);
	assign	wskd_vecb_addr_reg  = apply_wstrb(vecb_addr_reg,  wskd_data, wskd_strb);
	assign	wskd_vecr_addr_reg  = apply_wstrb(vecr_addr_reg,  wskd_data, wskd_strb);
	assign	wskd_vec_len_reg    = apply_wstrb(vec_len_reg,    wskd_data, wskd_strb);

	initial	op_reg = 0;
	initial	addr_reg = 0;
	initial	status_reg = 0;
	initial	data_read_reg = 0;
	initial	data_write_reg = 0;
    initial veca_addr_reg = 0;
    initial vecb_addr_reg = 0;
    initial vecr_addr_reg = 0;
    initial vec_len_reg   = 0;
	
	always @(posedge S_AXI_ACLK) begin
        if (i_reset) begin
            op_reg <= 0;
            addr_reg <= 0;
         // status_reg <= 0;
         // data_read_reg <= 0;
            data_write_reg <= 0;
        end else if (axil_write_ready) begin
            case(awskd_addr)
            4'b0000: op_reg         <= wskd_op_reg;
            4'b0001: addr_reg       <= wskd_addr_reg;
         // 4'b0010: status_reg     <= wskd_status_reg;
         // 4'b0011: data_read_reg  <= wskd_data_read_reg;
            4'b0100: data_write_reg <= wskd_data_write_reg;
            4'b0101: veca_addr_reg  <= wskd_veca_addr_reg;
            4'b0110: vecb_addr_reg  <= wskd_vecb_addr_reg;
            4'b0111: vecr_addr_reg  <= wskd_vecr_addr_reg;
            4'b1000: vec_len_reg    <= wskd_vec_len_reg;
            endcase
        end
	end

	initial	axil_read_data = 0;
	always @(posedge S_AXI_ACLK) begin
        if (OPT_LOWPOWER && !S_AXI_ARESETN) begin
            axil_read_data <= 0;
        end else if (!S_AXI_RVALID || S_AXI_RREADY) begin
            case(arskd_addr)
            4'b0000: axil_read_data	<= op_reg;
            4'b0001: axil_read_data	<= addr_reg;
            4'b0010: axil_read_data	<= status_reg;
            4'b0011: axil_read_data	<= data_read_reg;
            4'b0100: axil_read_data	<= data_write_reg;
            4'b0101: axil_read_data <= veca_addr_reg;
            4'b0110: axil_read_data <= vecb_addr_reg;
            4'b0111: axil_read_data <= vecr_addr_reg;
            4'b1000: axil_read_data <= vec_len_reg;            
            endcase
    
            if (OPT_LOWPOWER && !axil_read_ready)
                axil_read_data <= 0;
        end
    end

	function [C_AXI_DATA_WIDTH-1:0]	apply_wstrb;
		input	[  C_AXI_DATA_WIDTH-1:0] prior_data;
		input	[  C_AXI_DATA_WIDTH-1:0] new_data;
		input	[C_AXI_DATA_WIDTH/8-1:0] wstrb;

		integer	k;
		for(k=0; k<C_AXI_DATA_WIDTH/8; k=k+1) begin
			apply_wstrb[k*8 +: 8] = wstrb[k] ? new_data[k*8 +: 8] : prior_data[k*8 +: 8];
		end
		
	endfunction

	// Make Verilator happy
	// Verilator lint_off UNUSED
	wire	unused;
	assign	unused = &{ 1'b0, S_AXI_AWPROT, S_AXI_ARPROT,
			S_AXI_ARADDR[ADDRLSB-1:0],
			S_AXI_AWADDR[ADDRLSB-1:0] };
	// Verilator lint_on  UNUSED

	//////////////////////////////////////////////////////////////////////////////////////

	localparam integer wait_state = 0, read_state = 1, write_state = 2, done_state = 3,
	                   add_reada_state = 4, add_readb_state = 5, add_write_state = 6;
	localparam integer wait_op = 0, read_op = 1, write_op = 2, add_op = 3;
	
	wire                     clock;
	wire                     ram_enable;
	wire	                 write_enable;
    reg  [RAM_ADDR_BITS-1:0] address;
    reg  [RAM_WIDTH-1:0]     input_data;
	wire [RAM_WIDTH-1:0]     output_data;
	
	integer state, nstate;
	
	reg [RAM_ADDR_BITS-1:0] iterator;
	
	bram #(.RAM_WIDTH(RAM_WIDTH), .RAM_ADDR_BITS(RAM_ADDR_BITS))
        bram_inst(.clock(clock), .ram_enable(ram_enable), .write_enable(write_enable),
                  .address(address), .input_data(input_data), .output_data(output_data));
	                                           
    assign clock = ~S_AXI_ACLK;
    
    assign ram_enable   =  state == wait_state ? 1'b0 : 1'b1;
    assign write_enable = (state == write_state
                            || state == add_write_state) ? 1'b1 : 1'b0;
    
    always @(posedge S_AXI_ACLK) begin
        state <= nstate;
    end
    
    always @(*) begin
        nstate = wait_state;
        case(state)
        wait_state: begin
            if(status_reg == 32'h1)
                nstate = wait_state;
            else         
                case(op_reg)
                wait_op:  nstate = wait_state;
                read_op:  nstate = read_state;
                write_op: nstate = write_state;
                add_op:   nstate = add_reada_state;
                default:  nstate = wait_state;
                endcase
        end
        read_state:      nstate = done_state;
        write_state:     nstate = done_state;
        done_state:      nstate = wait_state;
        add_reada_state: nstate = add_readb_state;
        add_readb_state: nstate = add_write_state;
        add_write_state: nstate = iterator == vec_len_reg ? done_state : add_reada_state;
        default:         nstate = wait_state;
        endcase
    end
    
    always @(posedge S_AXI_ACLK) begin
        case(nstate)
        wait_state: begin
            if(op_reg == wait_op)
                status_reg <= 32'h0;
            iterator <= 0;
        end
        read_state: begin
            address <= addr_reg;
        end
        write_state: begin
            address <= addr_reg;
            input_data <= data_write_reg;
        end
        add_reada_state: begin
            address <= veca_addr_reg + iterator;
        end
        add_readb_state: begin
            address <= vecb_addr_reg + iterator;
            data_read_reg <= output_data;
        end
        add_write_state: begin
            address <= vecr_addr_reg + iterator;
            input_data <= data_read_reg + output_data;
            iterator <= iterator + 1;
        end
        done_state: begin
            if(state == read_state)
                data_read_reg <= output_data;
            status_reg[0] <= 32'h1;
        end
        endcase
    end

endmodule
`default_nettype wire