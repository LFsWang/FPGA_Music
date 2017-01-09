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
	parameter BTN_F1 = 9'b0_0000_0101;
	parameter BTN_F2 = 9'b0_0000_0110;
	parameter BTN_F3 = 9'b0_0000_0100;
	parameter BTN_F4 = 9'b0_0000_1100;
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
    parameter BTN_LEFT = 9'b0_0101_0100;
    parameter BTN_RIGHT = 9'b0_0101_1011;
    parameter BTN_ENTER = 9'b0_0101_1010;
    
    //top
    wire dclk, rst;
    declock dc1(.Oclk(dclk), .Iclk(clk_r), .n(5'd18));
    debounce db1(.Out(rst),.In(rst_r),.mclk(clk_r));
    reg [1:0] mode, nmode;
    
    //keyboard
    wire [511:0] key_down, key_down_op;
	wire [8:0] last_change;
	wire been_ready;
	KeyboardDecoder key_de (
		.key_down(key_down),
		.last_change(last_change),
		.key_valid(been_ready),
		.PS2_DATA(PS2Data),
		.PS2_CLK(PS2Clk),
		.rst(rst),
		.clk(clk_r)
	);
	big_onepulse(.opsignal(key_down_op), .in(key_down), .clk(dclk));
	
    //audio
    wire [3:0] freq1, freq2, freq3;
	reg [3:0] freq_out;
	wire [2:0] h1, h2, h3;
	reg [2:0] h_out;
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
	
	assign ja2 = 1'b1;
	assign ja4 = 1'b1;
	
	//Tuner
	Tuner tn1(.freq(freq1), .h(h1),
		  .rst(rst), .clk(dclk),
		  .high(key_down[BTN_PLUS]),
		  .low(key_down[BTN_SUB]),
		  .freq_in(freq_in),
		  .h_in(h_in)
	);
	speaker spk1(.clk(clk_r), .rst(rst), .freq(freq_out), .h(h_out), .duty(10'd512), .PWM(ja1));
	
	//Metronome
	wire [31:0] tempo;
	metronome(
		.freq(freq2), .h(h2), .count_max(tempo),
		.rst(rst), .clk(clk_r),
		.up(key_down[BTN_PLUS]), .down(key_down[BTN_SUB]),
		.meter({key_down[BTN_1], key_down[BTN_2], key_down[BTN_3], key_down[BTN_4]})
	);
	
	//Composer
	module Composer(
		.freq(freq3), .h(h3),
		.rst(rst), .clk(clk_r),
		.high(key_down[BTN_PLUS]), .low(key_down[BTN_SUB]),
		.left(key_down[BTN_LEFT]), .right(key_down[BTN_RIGHT]),
		.freq_in(freq_in), .h_in(h_in),
		.tempo(tempo),
		.play(key_down[BTN_ENTER])
	);
	
	//Garbage
	//assign led[3:0] = h_in[4:1];
    wire up, down, high, low, left, right;
    reg [14:0] toDisplay;
    wire btnU, btnD, btnL, btnR;
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
    
    assign led[15:12] = freq_out;
    assign led[10:8] = h_out;
    
    always @(posedge dclk) begin
        if( rst == 1'b1 )begin
        	mode <= 2'b00;
        end else begin
        	mode <= nmode;
        end
    end
    always @(*) begin
    	nmode = mode;
    	if(key_down_op[BTN_F1]|key_down_op[BTN_F2]) begin
    		if(key_down_op[BTN_F1]) nmode = 2'b01;
    		else nmode = 2'b10;
    	end else if(key_down_op[BTN_F3]|key_down_op[BTN_F4]) begin
    		if(key_down_op[BTN_F3]) nmode = 2'b11;
    		else nmode = 2'b00;
    	end
    end
    always @(*) begin
    	case(mode)
    		2'b00: begin
    			freq_out = 4'b1100;
    			h_out = 3'b010;
    		end
    		2'b01: begin
    			freq_out = freq1;
    			h_out = h1;
    		end
    		2'b10: begin
    			freq_out = freq2;
    			h_out = h2;
    		end
    		2'b11: begin
    			freq_out = freq3;
    			h_out = h3;
    		end
    	endcase
    end
endmodule