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
			nq = {7{1'b0}};
			nr = a;
		end else begin
			if(r >= 7'd10) begin
				nq = q+7'd1;
				nr = r-7'd10;
			end else begin
				nq = q;
				nr = r;
			end
		end
	end
endmodule

module DisplayDigit(an,seg,enable,value,mclk);
    input enable,mclk;
    input [14:0]value;//0~9999
    output reg [3:0] an;
    output reg [6:0] seg;

    wire dclk;
    declock (.OClk(dclk), .IClk(mclk));
    wire [14:0] A0,Q0,A1,Q1,A2,A3;
    mod10 (.q(Q0),.r(A0),.a(value),.mclk(mclk));
    mod10 (.q(Q1),.r(A1),.a(Q0),.mclk(mclk));
    mod10 (.q(A3),.r(A2),.a(Q1),.mclk(mclk));
    
    wire [6:0] S0,S1,S2,S3;
    segment (.seg(S0),.sw(A0[3:0]));
    segment (.seg(S1),.sw(A1[3:0]));
    segment (.seg(S2),.sw(A2[3:0]));
    segment (.seg(S3),.sw(A3[3:0]));
    always @(posedge dclk) begin
        if( enable == 1'b0 )begin
            an <= 4'b1110;
        end else begin
            an <= {an[3:1],an[0]};
        end
    end

    always @(*) begin
        if( enable == 1'b1 ) begin
            if( an[0]==1'b0 ) begin
                seg = S0;
            end else if( an[1]==1'b0 ) begin
                seg = S1;
            end else if( an[2]==1'b0 ) begin
                seg = S2;
            end else begin
                seg = S3;
            end
        end else begin
            seg = 7'b1111111;
        end
    end
endmodule

module Main(
    output [3:0] an,
    output [6:0] seg,
	output wire [15:0] led,
	input wire clk_r,
	input wire rst_r
	);
        
    wire dclk;
    
    declock (.OClk(dclk), .IClk(clk_r));
    debounce (.Out(rst),.In(rst_r),.mclk(clk_r));
    
    wire enable;
    reg [14:0] v;
    DisplayDigit (.an(an),.seg(seg),.enable(enable),.value(v),.mclk(clk));
    //onepulse (
    assign led[2] = dclk;
    assign led[1] = rst_r;
    assign led[0] = rst;
    assign enable = rst;
    
    always @(posedge dclk) begin
        v = 15'd1234;
        if( rst == 1'b1 )begin
        end else begin
        end
    end
    
endmodule