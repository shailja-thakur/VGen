// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// The antidote command to increase that q by one if and only if slowena is asserted.

always @ ( posedge clk )
 begin
 if ( reset )
 q <= 0;
 else if ( slowena && q<=9 )//check if q = 9 if yes reset
 q <= 0;
 else if ( slowena)//and if q=0 is high and q is not 9
 q <= q+1'b1;
 end
 endmodule`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2020 18:30:21
// Design Name: 
// Module Name: mux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0endmodule
