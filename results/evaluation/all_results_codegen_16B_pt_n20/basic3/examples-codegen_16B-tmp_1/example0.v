// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
module RS_OR( input [7:0] in, output [7:0] b );   // OUT = input | in
//When sel=2, assign low or high to out
module HIGH_OR_LOW( input [3:0] in, output [3:0] b ); 
//when sel = 3, assign low to out
//when sel = 4 assign high to out
//when sel = 5 assign in to out
//when sel = 6 assign low or high to out
module AND( input [7:0] in, input [7:0] b, output [7:0]  out );

// Input is bit[n], Output is bit[n + 2]
// With high(x) -> low(1-x)
module B_2BIT( input [1:0] in, output [3:0] b );

endmodule
