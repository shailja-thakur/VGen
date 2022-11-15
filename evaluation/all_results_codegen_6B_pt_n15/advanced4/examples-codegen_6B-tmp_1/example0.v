// Design a 64-bit arithmetic shift register, with synchronous load. 
// The shifter can shift both left and right, and by 1 or 8 bit positions, selected by amount.
module advshift(input clk,
input load,
input ena,
input [1:0] amount,
input [63:0] data,
output reg [63:0] q); 
// when load is high, assign data[63:0] to shift register q.
// if ena is high, shift q.
// amount: Chooses which direction and how much to shift.
// 2'b00: shift left by 1 bit.
// 2'b01: shift left by 8 bits.
// 2'b10: shift right by 1 bit.
// 2'b11: shift right by 8 bits.


module bin2dec(input reg,output bit); // Decode bit 40:to 39.
module par_output();
module interrupt;


signal pingsource_msr;

/*!!--------------------------------------------------------------------------
++! The notable IPv4 pack and unpack functions are lifted from VxWorks-586 
++! (dfh).  The IPv4 datagrams are neither encrypted nor calculated.
++!
++! Author:     Dave Hallorop
++! !Date:       May 23, 1998
++! Copyright 2001 Spenser-Privileges. All rights reserved.
++! !Author:     Jiodo-sb regeneration by Verilog-1997
++! !Date:       May 4, 1997
++! Technical Support by Health Industries International America Ltd., 
++!  a sponsored project by Redbaud, Pty. Ltd., Sydney, Australia.
++!
++! Warningendmodule
