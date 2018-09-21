module seg1(sw, seg);
    input [15:0] sw;
    output reg [7:0] seg;
    always @(sw) begin
    if     (sw[3:0]==4'b0000)seg[7:0]=8'b11000000;
    else if(sw[3:0]==4'b0001)seg[7:0]=8'b11111001;
    else if(sw[3:0]==4'b0010)seg[7:0]=8'b10100100;
    else if(sw[3:0]==4'b0011)seg[7:0]=8'b10110000;
    else if(sw[3:0]==4'b0100)seg[7:0]=8'b10011001;
    else if(sw[3:0]==4'b0101)seg[7:0]=8'b10010010;
    else if(sw[3:0]==4'b0110)seg[7:0]=8'b10000010;
    else if(sw[3:0]==4'b0111)seg[7:0]=8'b11111000;
    else if(sw[3:0]==4'b1000)seg[7:0]=8'b10000000;
    else if(sw[3:0]==4'b1001)seg[7:0]=8'b10011000;
    else if(sw[3:0]==4'b1010)seg[7:0]=8'b10001000;
    else if(sw[3:0]==4'b1011)seg[7:0]=8'b10000011;
    else if(sw[3:0]==4'b1100)seg[7:0]=8'b11000110;
    else if(sw[3:0]==4'b1101)seg[7:0]=8'b10100001;
    else if(sw[3:0]==4'b1110)seg[7:0]=8'b10000110;
    else if(sw[3:0]==4'b1111)seg[7:0]=8'b10001110;
    end
endmodule