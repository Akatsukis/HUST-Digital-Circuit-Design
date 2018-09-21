`timescale 1ns / 1ps
module FSM(clk, rst, requestFromUp, requestFromDown);
    parameter STOP = 0, UP = 1, DOWN = 2;
	input clk, rst, requestFromUp, requestFromDown;
	reg [1:0] state, nextState;
	initial begin
        state  = STOP;
    end
    always @(posedge clk)begin
        if(rst == 0)state = STOP;
        else state = nextState;
    end
    always @(state or requestFromUp or requestFromDown)begin
        case(state)
            STOP:begin
                if(requestFromUp)nextState <= UP;
                else if(requestFromDown)nextState <= DOWN;
				else nextState <= STOP;
            end
            UP:begin
                if(requestFromUp)nextState <= UP;
				else if(requestFromDown)nextState <= DOWN;
				else nextState <= STOP;
            end
            DOWN:begin
				if(requestFromDown)nextState <= DOWN;
				else if(requestFromUp)nextState <= UP;
				else nextState <= STOP;
            end
        endcase
    end
    
endmodule
