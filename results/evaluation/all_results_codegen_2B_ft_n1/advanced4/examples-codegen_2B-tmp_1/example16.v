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


input bits [45:0];

suncos ii 3
// systemclock fos 300ohms

reg my_state

// arbitrary clock sync
clocking clocksync
ADVS = (clock 
   ^ my_state ^ 
48)
// any input clock changes the shift register 20 bits forward from its state
input state;

reg shift [63:0] q;

reg shifter [64:0] 
shift [63:0] isc;		// the simulated shift register state
clocking clearshift
clocking doble
ADVS is_active : bits[incr];
isc : shift
shift is : shift_res
bits [incr] : q; 



// First output t1I value to register q[incr] 
t1i = q[incr];


scope [repeat t generated repeat_t{65};endmodule
