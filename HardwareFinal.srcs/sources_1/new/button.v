module debounce(
	output Out,
	input In, mclk
	);
    parameter bufsize = 4;
    reg [bufsize-1:0]bf;
    assign Out = &bf;
    always @(posedge mclk) begin
        bf[bufsize-1:1] <= bf[bufsize-2:0];
        bf[0] <= In;
    end
endmodule

module onepulse(
	output reg sign,
	input In, dclk
	);
    
    reg last;
    always @(posedge dclk) begin
        sign <= In & (~last);
        last <= In;
    end
endmodule