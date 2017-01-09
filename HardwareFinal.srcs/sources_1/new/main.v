module Main(
    output wire [3:0] an,
    output wire [6:0] seg,
	output wire [15:0] led,
	output wire ja1, ja2, ja4, jb1, jb2, jb4,
	input  [15:0] sw,
	input  clk_r,
	input  rst_r,
	input  btnU_r, btnD_r, btnL_r, btnR_r,
	inout wire PS2Data,
	inout wire PS2Clk
	);
	parameter BTN_WAVE = 9'b0_0000_1110;
    parameter BTN_0 = 9'b0_0100_0101;
    parameter BTN_1 = 9'b0_0001_0110;
    parameter BTN_2 = 9'b0_0001_1110;
    parameter BTN_3 = 9'b0_0010_0110;
    parameter BTN_4 = 9'b0_0010_0101;
    parameter BTN_5 = 9'b0_0010_1110;
    parameter BTN_6 = 9'b0_0011_0110;
    parameter BTN_7 = 9'b0_0011_1101;
    parameter BTN_8 = 9'b0_0011_1110;
    parameter BTN_9 = 9'b0_0100_0110;
    parameter BTN_SUB = 9'b0_0100_1110;
    parameter BTN_PLUS = 9'b0_0101_0101;
    parameter BTN_Q = 9'b0_0001_0101;
    parameter BTN_A = 9'b0_0001_1100;
    parameter BTN_Z = 9'b0_0001_1010;
    parameter BTN_W = 9'b0_0001_1101;
    parameter BTN_S = 9'b0_0001_1011;
    parameter BTN_X = 9'b0_0010_0010;
    parameter BTN_E = 9'b0_0010_0100;
    parameter BTN_D = 9'b0_0010_0011;
    parameter BTN_C = 9'b0_0010_0001;
    parameter BTN_R = 9'b0_0010_1101;
    parameter BTN_F = 9'b0_0010_1011;
    parameter BTN_V = 9'b0_0010_1010;
    
    
    wire [511:0] key_down, key_down_op;
	wire [8:0] last_change;
	wire been_ready;
	
    wire dclk, rst;
    wire [1:0] mode;
    wire up, down, high, low, left, right;
    wire [3:0] freq1, freq2, freq3;
    wire [2:0] h1, h2, h3;
    wire [12:0] freq_in;
    assign freq_in = {
    	key_down_op[BTN_WAVE],
    	key_down_op[BTN_V],
    	key_down_op[BTN_C],
    	key_down_op[BTN_X],
    	key_down_op[BTN_Z],
    	key_down_op[BTN_F],
    	key_down_op[BTN_D],
    	key_down_op[BTN_S],
    	key_down_op[BTN_A],
    	key_down_op[BTN_R],
    	key_down_op[BTN_E],
    	key_down_op[BTN_W],
    	key_down_op[BTN_Q]
    };
    wire [4:0] h_in;
    assign h_in = {
    	key_down_op[BTN_1],
    	key_down_op[BTN_2],
    	key_down_op[BTN_3],
    	key_down_op[BTN_4],
    	key_down_op[BTN_5]
    };
    reg test;
    
    reg [14:0] toDisplay;
    
    wire btnU, btnD, btnL, btnR;
    
    big_onepulse(.opsignal(key_down_op), .in(key_down), .clk(dclk));
    declock dc1(.Oclk(dclk), .Iclk(clk_r), .n(5'd18));
    debounce db1(.Out(rst),.In(rst_r),.mclk(clk_r));
    debounce db2(.Out(btnU),.In(btnU_r),.mclk(clk_r));
    debounce db3(.Out(btnD),.In(btnD_r),.mclk(clk_r));
    debounce db4(.Out(btnL),.In(btnL_r),.mclk(clk_r));
    debounce db5(.Out(btnR),.In(btnR_r),.mclk(clk_r));
    //onepulse op1(.sign(high), .In(btnU), .dclk(dclk));
    //assign high = key_down[9'b0_0100_0110];
    onepulse op2(.sign(low), .In(btnD), .dclk(dclk));
    onepulse op3(.sign(left), .In(btnL), .dclk(dclk));
    onepulse op4(.sign(right), .In(btnR), .dclk(dclk));
    DisplayDigit dd1(.an(an), .seg(seg), .enable(rst), .value(toDisplay), .mclk(dclk));
    Tuner tn1(.freq(freq1), .h(h1),
    		  .rst(rst), .clk(dclk),
    		  .high(key_down_op[BTN_PLUS]),
    		  .low(key_down_op[BTN_SUB]),
    		  .freq_in(freq_in),
    		  .h_in(h_in)
    	);
    
    speaker spk1(.clk(clk_r), .rst(rst), .freq(freq1), .h(h1), .duty(10'd512), .PWM(ja1));
    
    KeyboardDecoder key_de (
    		.key_down(key_down),
    		.last_change(last_change),
    		.key_valid(been_ready),
    		.PS2_DATA(PS2Data),
    		.PS2_CLK(PS2Clk),
    		.rst(rst),
    		.clk(clk_r)
    	);
    assign mode = sw[1] ? 2'b01 :
    			  sw[2] ? 2'b10 :
    			  sw[3] ? 2'b11 : 2'b00;
    
    assign ja2 = 1'b1;
    assign ja4 = 1'b1;
    assign led[15:12] = freq1;
    assign led[10:8] = h1;
    
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