// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
always@(posedge clk)
begin
case(reset)
	1'b1: q <= 4'd1;
	default:
	if(q == 4'b12) 
	begin
	case(q)
	4'b0: q <= 4'd1;
	4'b1: q <= 4'd1;
	4'b10: q <= 4'd1;
	4'b11: q <= 4'd12;
	endcase
	end 
	endcase
end 
 endmodule 
`timescale 1ns / 1ps
module simulation;
reg clk;
wire [3:0]q;

counter CU(.clk(clk),.reset(1'b0),.q(q));
always
#10 clk=!clk;
initial
initial
begin
clk=0;endmodule
