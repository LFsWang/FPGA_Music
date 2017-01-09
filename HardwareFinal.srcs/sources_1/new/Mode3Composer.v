module Composer(
		output wire [3:0] freq,
		output reg [6:0] pos,
		output wire [2:0] h,
		input wire rst, clk,
		input wire high, low, left, right,
		input wire [12:0] freq_in,
		input wire [4:0] h_in,
		input wire [31:0] tempo,
		input wire play
	);
	
	reg state, nstate;
	reg [3:0] freq_ram[0:127];
	reg [2:0] h_ram[0:127];
	reg [3:0] len_ram[0:127];
	
	reg [6:0] npos;
	reg [31:0] count, ncount;
	
	wire dclk, xclk;
	declock dc1(.Oclk(dclk), .Iclk(clk_r), .n(5'd18));
	declock dc2(.Oclk(xclk), .Iclk(clk_r), .n(5'd12));
	
	Tuner(
		.freq(freq),
		.h(h),
		.rst(rst), .clk(dclk),
		.high(), .low(),
		.freq_in(freq_ram[pos]),
		.h_in(h_ram[pos])
	);
	always @(posedge dclk) begin
		if(rst) begin
			pos <= 7'd0;
			state <= 1'b1;
		end else begin
			pos <= npos;
			state <= nstate;
		end
	end
	always @(*) begin
		if(play) nstate = ~state;
		else nstate = state;
	end
	always @(posedge xclk) begin
		if(rst) begin
			count <= 0;
		end else begin
			count <= ncount;
		end
	end
	always @(*) begin
		if(state) begin
			ncount = 0;
		end else begin
			ncount = (count<tempo) ? count+1 : 0;
		end
	end
	always @(*) begin
		if(state) begin
			npos = pos;
			if(left|right) begin
				if(left&right) begin
					npos = pos;
				end else if(right) begin
					if(pos == 7'd127) npos = pos;
					else npos = pos+1'b1;
				end else begin
					if(pos == 7'd0) npos = pos;
					else npos = pos-1'b1;
				end
			end
		end else begin
			npos = pos;
			if(count==tempo-1) npos = (pos == 7'd127) ? pos : pos+1;
			else npos = pos;
		end
	end
endmodule