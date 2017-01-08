module speaker (
    input wire clk,
    input wire rst,
	input [3:0] freq,
	input [2:0] h,
    input [9:0] duty,
    output reg PWM
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
	
	reg [31:0] count;
	reg [31:0] freq_a, freq_b;
	
	wire [31:0] count_max = 100_000_000 / freq_b;
	wire [31:0] count_duty = count_max * duty / 1024;

	always @(posedge clk, posedge rst) begin
		if (rst) begin
			count <= 0;
			PWM <= 0;
		end else if (count < count_max) begin
			count <= count + 1;
			if(count < count_duty)
				PWM <= 1;
			else
				PWM <= 0;
		end else begin
			count <= 0;
			PWM <= 0;
		end
	end

	always @(*) begin
		case(freq)
			C:  freq_a = 32'd262;
			Cs: freq_a = 32'd277;
			D:  freq_a = 32'd294;
			Ds: freq_a = 32'd311;
			E:  freq_a = 32'd330;
			F:  freq_a = 32'd349;
			Fs: freq_a = 32'd370;
			G:  freq_a = 32'd392;
			Gs: freq_a = 32'd415;
			A:  freq_a = 32'd440;
			As: freq_a = 32'd466;
			B:  freq_a = 32'd494;
			default:  freq_a = 32'd20000;
		endcase
	end
	
	always @(*) begin
		case(h)
			3'b000: freq_b = freq_a >> 2;
			3'b001: freq_b = freq_a >> 1;
			3'b010: freq_b = freq_a;
			3'b011: freq_b = freq_a << 1;
			3'b100: freq_b = freq_a << 2;
			default: freq_b = freq_a;
		endcase
	end
endmodule