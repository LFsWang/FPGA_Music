module mod10(q,r,a,mclk);
    parameter n = 15;
	input [n-1:0] a;
	input mclk;
	output [n-1:0] q,r;
	
	reg [n-1:0] r, nr, q, nq, la;
	
	always @(posedge mclk) begin
		la <= a;
		q <= nq;
		r <= nr;
	end
	
	always @(*) begin
		if(a!=la) begin
			nq = {n{1'b0}};
			nr = a;
		end else begin
			if(r >= 'd10) begin
				nq = q+'d1;
				nr = r-'d10;
			end else begin
				nq = q;
				nr = r;
			end
		end
	end
endmodule
