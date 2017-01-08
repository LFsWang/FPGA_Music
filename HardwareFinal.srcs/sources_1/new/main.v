module segment(seg, sw);
	input [3:0] sw;
	output [6:0] seg;
	
	wire [3:0] nsw;
	wire [15:0] temp; 
	not N1[3:0] (nsw, sw);
	and A01(temp[0], nsw[3], nsw[2], nsw[1], nsw[0]);
	and A02(temp[1], nsw[3], nsw[2], nsw[1], sw[0]);
	and A03(temp[2], nsw[3], nsw[2], sw[1], nsw[0]);
	and A04(temp[3], nsw[3], nsw[2], sw[1], sw[0]);
	and A05(temp[4], nsw[3], sw[2], nsw[1], nsw[0]);
	and A06(temp[5], nsw[3], sw[2], nsw[1], sw[0]);
	and A07(temp[6], nsw[3], sw[2], sw[1], nsw[0]);
	and A08(temp[7], nsw[3], sw[2], sw[1], sw[0]);
	and A09(temp[8], sw[3], nsw[2], nsw[1], nsw[0]);
	and A10(temp[9], sw[3], nsw[2], nsw[1], sw[0]);
	and A11(temp[10], sw[3], nsw[2], sw[1], nsw[0]);
	and A12(temp[11], sw[3], nsw[2], sw[1], sw[0]);
	and A13(temp[12], sw[3], sw[2], nsw[1], nsw[0]);
	and A14(temp[13], sw[3], sw[2], nsw[1], sw[0]);
	and A15(temp[14], sw[3], sw[2], sw[1], nsw[0]);
	and A16(temp[15], sw[3], sw[2], sw[1], sw[0]);
	
	or OR1(seg[0], temp[1], temp[4], temp[11], temp[13]);
	or OR2(seg[1], temp[5], temp[6], temp[11], temp[12], temp[14], temp[15]);
	or OR3(seg[2], temp[2], temp[12], temp[14], temp[15]);
	or OR4(seg[3], temp[1], temp[4], temp[7], temp[10], temp[15]);
	or OR5(seg[4], temp[1], temp[3], temp[4], temp[5], temp[7], temp[9]);
	or OR6(seg[5], temp[1], temp[2], temp[3], temp[7], temp[13]);
	or OR7(seg[6], temp[0], temp[1], temp[7], temp[12]);
endmodule

module declock(OClk,IClk);
    input IClk;
    output OClk;
    parameter n = 19;
    reg [20:0] bf;
    assign OClk = bf[n];
    always @(posedge IClk)
        bf <= bf+1'b1;
endmodule

module debounce(Out,In,mclk);
    input In,mclk;
    output Out;
    parameter bufsize = 4;
    reg [bufsize-1:0]bf;
    assign Out = &bf;
    always @(posedge mclk) begin
        bf[bufsize-1:1] <= bf[bufsize-2:0];
        bf[0] <= In;
    end
endmodule

module onepulse(sign,In,dclk);
    input In,dclk;
    output reg sign;
    
    reg last;
    always @(dclk) begin
        sign <= In&!last;
        last <= In;
    end
endmodule

module Main(led,clk,rMainbtn);
    input clk,rMainbtn;
    output [15:0] led;
    
    wire dclk, rMainbtn;
    
    declock (.OClk(dclk), .IClk(clk));
    debounce (.Out(Mainbtn),.In(rMainbtn),.mclk(clk));
    //onepulse (
    assign led[2] = dclk;
    assign led[1] = rMainbtn;
    assign led[0] = Mainbtn;
    
    always @(posedge clk) begin
        
    end
    
endmodule