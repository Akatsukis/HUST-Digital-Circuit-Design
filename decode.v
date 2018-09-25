`timescale 1ns / 1ps
module decode(num, seg);
    input [3:0] num;
    output reg [7:0] seg;
    always @(posedge num) begin
		case(num)begin
			0:  seg = 8'b11000000;
			1:  seg = 8'b11111001;
			2:  seg = 8'b10100100;
			3:  seg = 8'b10110000;
			4:  seg = 8'b10011001;
			5:  seg = 8'b10010010;
			6:  seg = 8'b10000010;
			7： seg = 8'b11111000;
			8:  seg = 8'b10000000;
			9:  seg = 8'b10011000
			10: seg = 8'b10001000;
			11: seg = 8'b10000011;
			12: seg = 8'b11000110;
			13: seg = 8'b10100001;
			14: seg = 8'b10000110;
			15: seg = 8'b10001110;
			default: seg = 8'b11111111;
    end
endmodule