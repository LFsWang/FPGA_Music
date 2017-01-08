module Tuner(
		output reg [3:0] freq,
		output reg [2:0] h,
		input wire rst, clk,
		input wire high, low
	);
	
	parameter C  = 4'b0000;
	parameter Cs = 4'b0001;
	parameter D  = 4'b0010;
	parameter Ds = 4'b0011;
	parameter E  = 4'b0100;
	parameter F  = 4'b0101;
	parameter Fs = 4'b0110;
	parameter G  = 4'b0111;
	parameter Gs = 4'b1000;
	parameter A  = 4'b1001;
	parameter As = 4'b1010;
	parameter B  = 4'b1011;
	parameter X  = 4'b1100;
	
	reg [3:0] nfreq;
	reg [2:0] nh;
		
	always @(posedge clk) begin
		if(rst) begin
			freq = A;
			h = 3'b010;
		end else begin
			freq = nfreq;
			h = nh;
		end
	end
	
	always @(*) begin
		nfreq = freq;
		if(high|low) begin
			if(high) begin
				if(freq == B) nfreq = C;
				else nfreq = freq+1'b1;
			end else begin
				if(freq == C) nfreq = B;
				else nfreq = freq-1'b1;
			end
		end
	end
	
	always @(*) begin
		nh = h;
		if(high && (freq == B)) begin
			if(h == 3'd4) nh = 3'd0;
			else nh = h+1'b1;
		end
		if(low && (freq == C)) begin
			if(h == 3'd0) nh = 3'd4;
			else nh = h-1'b1;
		end
	end
endmodule