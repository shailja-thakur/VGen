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
always @(posedge clk or posedge reset)
begin
	if (reset)
	begin
	q <= 4'b1;
	end
	if (q == 4'b1)
	begin
	q <= 4'b1;
	end
	else if (q == 4'b12)
	begin
	q <= 4'b1;
	end
	else if (q < 12)
	begin
	q <= q + 1;
	end
 end

 counter x ( .clk (clk),.reset(reset),.q (q)); 
 endmodule `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2020 03:45:35 PM
// Design Name: 
// Module Name: morse_keys
// Project Nameendmodule
