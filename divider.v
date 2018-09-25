`timescale 1ns / 1ps
module divide(powerOn, clk, clk_1Hz);
	input powerOn, clk;
	output reg clk_1Hz;
	reg [31:0] counter;
	parameter N = 50_000_000;
	initial begin 
		clk_1Hz = 0;
		counter = 0;
	end
	always @(posedge clk)begin
		if(powerOn)begin
			counter = counter+1;
			if(counter%N == 0)begin
				clk_1Hz <= ~clk_1Hz;
				counter <= 0;
			end
		end
		else begin
			clk_1Hz <= 0;
			counter <= 0;
		end
	end
	
endmodule
