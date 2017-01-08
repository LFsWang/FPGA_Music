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

module DisplayDigit(
	output reg [3:0] an,
	output reg [6:0] seg,
	input enable,
	input [14:0] value,
	input mclk
	);

    wire dclk;
    declock (.Oclk(dclk), .Iclk(mclk));
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