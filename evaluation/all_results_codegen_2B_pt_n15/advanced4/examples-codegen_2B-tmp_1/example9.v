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


reg[47:0] shift_reg;


sig("sync_clk") div_out ;

always_comb
{
    if(ena) shift_reg <= data ;
    <<=2^amount ;
	div_out <= clk ;
  }

always @("")
{
    // make sure the current value is still queued for shiftin' before setting the next one.
    vld <= "not";

    //  Initially all serial bits are forwarded to the shifter with qinit.
    if(ena and not load)   q.assign(shift_reg); // assume that the first bit of q is loaded first. 
    else                    q.assign("0")  ; 
}

#include "generic_sync_channels.h"
endmodule
