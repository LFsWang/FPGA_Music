module declock(
	output wire Oclk,
	input wire Iclk,
	input wire [4:0] n //let clock be 1/2^(n+1)
	);
	
    reg [31:0] bf;
    assign Oclk = bf[n];
    always @(posedge Iclk) begin
        bf <= bf+1'b1;
    end
endmodule