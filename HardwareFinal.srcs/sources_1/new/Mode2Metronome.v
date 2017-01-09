module metronome(
		output wire [3:0] freq,
		output wire [2:0] h,
		output wire [31:0] count_max,
		input wire rst, clk,
		input wire up, down,
		input wire [3:0] meter
	);
	
	wire dclk;
	declock dc1(.Oclk(dclk), .Iclk(clk), .n(5'd22));
	
	wire xclk;
	declock dc2(.Oclk(xclk), .Iclk(clk), .n(5'd12));
	
	wire [31:0] ncount;
	reg [31:0] count, bpm, nbpm;
	reg [1:0] beat, nbeat, count_beat;
	assign count_max = 32'd732420/bpm;
	assign ncount = (count< count_max) ? count+1 : 32'd0;
	
	assign freq = (count < 32'd1000) ? 4'b1000 : 4'b1100;
	assign h = (count_beat==beat) ? 3'b100 : 3'b011;
	
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
			count_beat <= 2'b00;
			beat <= 2'b11;
		end else begin
			count <= ncount;
			count_beat <= (count==32'd0) ? ((count_beat==beat) ? 2'b00 : count_beat+1) : count_beat;
			beat <= nbeat;
		end
	end
	always @(*) begin
		case(meter)
			4'b1000: nbeat = 2'b01;
			4'b0100: nbeat = 2'b10;
			4'b0010: nbeat = 2'b11;
			default: nbeat = beat;
		endcase
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