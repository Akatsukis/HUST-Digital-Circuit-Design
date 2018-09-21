`timescale 1ns / 1ps
module elevator(clk, rst, upBotton, downBotton, floorBotton, openBotton, closeBotton);
	input clk, rst;
	input [2:0] upBotton, downBotton, floorBotton;
	input openBotton, closeBotton;
	reg [3:0] remainTime;
	reg [2:0] floor;
	output openLight, closeLight;
	output [3:0] floorLight, remainTimeLight;
endmodule
