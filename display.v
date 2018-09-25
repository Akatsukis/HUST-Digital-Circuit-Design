module display(powerOn, clk, clk_10000Hz, remainTime, floor, seg, an)
	input clk, clk_10000Hz;
	input [3:0] remainTime;
	input [2:0] floor;
	output seg;
	output reg an;
	reg [2:0] sel, num;
	initial begin
		an = 8'11111111;
		sel = 0;
		num = 0;
	end
	decode useDecode(num, seg);
	always@(posedge clk_10000Hz)begin
		if(powerOn)begin
			sel <= sel+1;
			case(sel)
				0:begin
					an <= 8'b01111111;
					num <= remainTime/10;
				end
				1:begin
					an <= 8'b10111111;
					num <= remainTime%10;
				end
				2:begin
					an <= 8'b11101111;
					num <= floor/10;
				end
				3:begin
					an <= 8'b11110111;
					num <= floor%10;
				end
				default:begin
					an <= 8'11111111;
					sel <= 0;
					num <= 0;
				end
				
		end
		else begin
			an <= 8'11111111;
			sel <= 0;
			num <= 0;
		end
	end
endmodule
	
