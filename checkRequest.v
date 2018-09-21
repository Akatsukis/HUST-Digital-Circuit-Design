`timescale 1ns / 1ps
module checkRequest(upBotton, downBotton, floorBotton, upRequest, downRequest, floorRequest);
	parameter MAX_FLOOR = 8;
    input [7:0] upBotton, downBotton, floorBotton;
	output reg [7:0] upRequest, downRequest, floorRequest;
	genvar i;
	generate
		for(i = 0; i < MAX_FLOOR; i = i+1)begin
			always@(posedge upBotton[i])begin
				upRequest[i] <= !upRequest[i];
			end
		end
		for(i = 0; i < MAX_FLOOR; i = i+1)begin
			always@(posedge downBotton[i])begin
				downRequest[i] <= !downRequest[i];
			end
		end
		for(i = 0; i < MAX_FLOOR; i = i+1)begin
			always@(posedge floorBotton[i])begin
				floorRequest[i] <= !floorBotton[i];
			end
		end
	endgenerate
endmodule
