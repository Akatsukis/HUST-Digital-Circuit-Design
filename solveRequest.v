`timescale 1ns / 1ps
module solveRequest(upRequest, downRequest, floorRequest, floor, requestFromUp, requestFromDown);
	parameter MAX_FLOOR = 8;
    input [7:0] upRequest, downRequest, floorRequest;
	input [2:0] floor;
	output reg requestFromUp, requestFromDown;
	integer i, flg;
	always @(floor or upRequest or downRequest)begin
		flg = 1;
		for(i = floor+1; i < MAX_FLOOR; i = i+1)begin
			if(upRequest[i])begin
				requestFromUp <= 1;
				flg = 0;
			end
		end
		if(flg)requestFromUp <= 0;
		flg = 1;
		for(i = floor-1; i >= 0; i = i-1)begin
			if(downRequest[i])begin
				requestFromDown <= 1;
				flg = 0;
			end
		end
		if(flg)requestFromDown <= 0;
	end
endmodule