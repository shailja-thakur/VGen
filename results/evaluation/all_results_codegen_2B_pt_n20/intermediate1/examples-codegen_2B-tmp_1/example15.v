// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Bit shifter is input is binary and outputs bitwise shifted input.
module creative_shifter( 
input combine, bit_out,
output shiftout );

// Pipe an 8-bit input loaded in CPU_ID in the first half of the CPU pipe.
module combiner( 
input cfun, memory a,
output spineout );

module shifter ( 
input fuse,
output shiftin );

// The 10-bit output shifter on an LCR is the 8-bit shifter in-set
// and an 8-bit external shifter.
module ex_shifter(
input shiftr,
output ex_shiftr,
input a8,
output a_shiftr );

always @( posedge ex_shiftr )
rec A8_shiftr(
output a_shiftr,
input a8 );

///// INTERNendmodule
