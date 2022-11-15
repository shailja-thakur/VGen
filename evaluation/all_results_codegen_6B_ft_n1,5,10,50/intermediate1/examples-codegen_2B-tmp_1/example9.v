// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

/*
 [1] [1] [0] [1]

[1] is a wire +
[0] is a wire +
*/

// Inputs
in [input fuse]

// Stages
temp = a + b  
temp
sum

// Registers
in [wire fp] and buffer
inp [wire] and buffer

// Symbolic Functions
uid [wire a_exec] and wire fp ( f_out ) and output fuse ( f_r )

// Init Block is optional. 
init [z_out = f_r; a_out = f_r; b_out = f_r ]

*/
endmodule
