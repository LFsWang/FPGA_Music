module Main(
    output wire [3:0] an,
    output wire [6:0] seg,
	output wire [15:0] led,
	output wire ja1, ja2, ja4, jb1, jb2, jb4,
	input  [15:0] sw,
	input  clk_r,
	input  rst_r,
	input  btnU_r, btnD_r, btnL_r, btnR_r
	);
        
    wire dclk, rst;
    wire [1:0] mode;
    wire up, down, high, low, left, right;
    wire [3:0] freq1, freq2, freq3;
    wire [2:0] h1, h2, h3;
    reg test;
    
    reg [14:0] toDisplay;
    
    wire btnU, btnD, btnL, btnR;
    
    declock dc1(.Oclk(dclk), .Iclk(clk_r), .n(5'd19));
    debounce db1(.Out(rst),.In(rst_r),.mclk(clk_r));
    debounce db2(.Out(btnU),.In(btnU_r),.mclk(clk_r));
    debounce db3(.Out(btnD),.In(btnD_r),.mclk(clk_r));
    debounce db4(.Out(btnL),.In(btnL_r),.mclk(clk_r));
    debounce db5(.Out(btnR),.In(btnR_r),.mclk(clk_r));
    onepulse op1(.sign(high), .In(btnU), .dclk(dclk));
    onepulse op2(.sign(low), .In(btnD), .dclk(dclk));
    onepulse op3(.sign(left), .In(btnL), .dclk(dclk));
    onepulse op4(.sign(right), .In(btnR), .dclk(dclk));
    DisplayDigit dd1(.an(an), .seg(seg), .enable(rst), .value(toDisplay), .mclk(dclk));
    Tuner tn1(.freq(freq1), .h(h1), .rst(rst), .clk(dclk), .high(high), .low(low));
    
    speaker spk1(.clk(clk_r), .rst(rst), .freq(freq1), .h(h1), .duty(10'd512), .PWM(ja1));
    
    assign mode = sw[1] ? 2'b01 :
    			  sw[2] ? 2'b10 :
    			  sw[3] ? 2'b11 : 2'b00;
    
    assign ja2 = 1'b1;
    assign ja4 = 1'b1;
    assign led[15:12] = freq1;
    assign led[10:8] = h1;
    assign led[0] = test;
    
    always @(posedge dclk) begin
        if( rst == 1'b1 )begin
        	test <= 1'b0;
        end else begin
        	test <= test^high;
        end
    end
    always @(posedge dclk) begin
        	case(mode)
        		2'b01: begin
        			toDisplay = h1*14'd100+freq1;
        		end
        		2'b10: begin
        			toDisplay = 0;
        		end
        		2'b11: begin
        			toDisplay = 0;
        		end
        		default: begin
        			toDisplay = 0;
        		end
        	endcase
        end
    /*always @(posedge dclk) begin
    	case(mode)
    		2'b01: begin
    		
    		end
    		2'b10: begin
    		
    		end
    		2'b11: begin
    		
    		end
    		default: begin
    		
    		end
    	endcase
    end*/
    
endmodule