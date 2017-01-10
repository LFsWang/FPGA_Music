module Composer(
		output wire [3:0] freq,
		output reg [6:0] pos,
		output reg state,
		output wire [2:0] h,
		input wire rst, clk,
		input wire high, low, left, right,
		input wire [12:0] freq_in,
		input wire [4:0] h_in,
		input wire [7:0] len_in,
		input wire [31:0] tempo,
		input wire play,
		input wire to_start
	);
	
	wire xclk, dclk;
	declock dc1(.Oclk(dclk), .Iclk(clk), .n(5'd18));
	declock dc2(.Oclk(xclk), .Iclk(clk), .n(5'd12));
	
	wire play_op, left_op, right_op, to_start_op;
	onepulse op1(.sign(play_op), .In(play), .dclk(dclk));
	onepulse op2(.sign(to_start_op), .In(to_start), .dclk(dclk));
	onepulse op3(.sign(left_op), .In(left), .dclk(xclk));
	onepulse op4(.sign(right_op), .In(right), .dclk(xclk));
	reg nstate;
	reg [3:0] nfreq_ram;
	reg [2:0] nh_ram;
	reg [7:0] nlen_ram;
	reg [3:0] freq_ram[0:127];
	reg [2:0] h_ram[0:127];
	reg [7:0] len_ram[0:127];
	
	wire [3:0] freq_tuner;
	wire [2:0] h_tuner;
	
	reg [6:0] npos;
	reg [31:0] count, ncount, len;
	
	Tuner(
		.freq(freq_tuner),
		.h(h_tuner),
		.rst(rst), .clk(dclk),
		.high(), .low(),
		.freq_in(freq_in),
		.h_in(h_in)
	);
	always @(*) begin
		nfreq_ram = state ? ((|{freq_in, h_in, len_in}) ? freq_tuner : freq_ram[pos]) : freq_ram[pos];
		nh_ram = state ? ((|{freq_in, h_in, len_in}) ? h_tuner : h_ram[pos]) : h_ram[pos];
		nlen_ram = state ? ((|{freq_in, h_in, len_in}) ? len_in : len_ram[pos]) : len_ram[pos];
	end
	assign freq = (len-count < 32'd500) ? 4'b1100 : freq_ram[pos];
	assign h = h_ram[pos];
	
	
	always @(posedge dclk) begin
		case(len_ram[pos])
			8'b00000001: len = (tempo/3)*2;
			8'b00000010: len = tempo/3;
			8'b00000100: len = tempo/4;
			8'b00001000: len = tempo/2;
			8'b00010000: len = tempo;
			8'b00100000: len = (tempo/2)*3;
			8'b01000000: len = tempo*2;
			8'b10000000: len = tempo*3;
			default: len = tempo;
		endcase
	end
	
	always @(posedge dclk) begin
		if(rst) begin
			state <= 1'b1;
		end else begin
			state <= nstate;
			freq_ram[pos] <= nfreq_ram;
			h_ram[pos] <= nh_ram;
			len_ram[pos] <= nlen_ram;
		end
	end
	always @(*) begin
		if(play_op) nstate = ~state;
		else nstate = state;
	end
	always @(posedge xclk) begin
		if(rst) begin
			pos <= 7'b000_0000;
			count <= 0;
		end else begin
			pos <= npos;
			count <= ncount;
		end
	end
	always @(*) begin
		if(state) begin
			ncount = (|{freq_in, h_in, len_in, left_op, right_op}) ? 0 : ((count<len) ? count+1 : len);
		end else begin
			ncount = (count<len) ? count+1 : 0;
		end
	end
	always @(*) begin
		if(state==1'b1) begin
			npos = pos;
			if(left_op|right_op) begin
				if(left_op&right_op) begin
					npos = pos;
				end else if(right_op) begin
					if(pos == 7'd127) npos = pos;
					else npos = pos+1;
				end else begin
					if(pos == 7'd0) npos = pos;
					else npos = pos-1;
				end
			end
			if(to_start_op) npos = 0;
		end else begin
			npos = pos;
			if(count==len-1'b1) npos = (pos == 7'd127) ? pos : pos+1;
		end
	end
	
endmodule