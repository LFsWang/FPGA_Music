module metronome(
		output wire [3:0] freq,
		output wire [2:0] h,
		input wire rst, clk,
		input wire up, down,
		input wire [1:0] meter
	);
	
	wire dclk;
	declock dc1(.Oclk(dclk), .Iclk(clk), .n(5'd22));
	
	wire xclk;
	declock dc2(.Oclk(xclk), .Iclk(clk), .n(5'd12));
	
	wire [31:0] count_max, ncount;
	reg [31:0] count, bpm, nbpm;
	assign count_max = 32'd732420/bpm;
	assign ncount = (count< count_max) ? count+1 : 32'd0;
	
	assign freq = (count < 32'd2000) ? 4'b1000 : 4'b1100;
	assign h = 3'b011;
	
	always @(posedge dclk) begin
		if(rst) begin
			bpm <= 32'd88;
		end else begin
			bpm <= nbpm;
		end
	end
	always @(posedge xclk) begin
		if(rst) begin
			count <= 32'd0;
		end else begin
			count <= ncount;
		end
	end
	always @(*) begin
		nbpm = bpm;
		if(up|down) begin
			if(up&down) begin
				nbpm = bpm;
			end else if(up) begin
				nbpm = (bpm == 32'd180) ? bpm :bpm+1;
			end else begin
				nbpm = (bpm == 32'd40) ? bpm : bpm-1;
			end
		end
	end
endmodule