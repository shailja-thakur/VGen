// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge sel) begin
   pos <= in<<1;
end

// Sel selects the top 3 bits, and triggers on falling edge transitions 
// Decodes one bit of a position n inputs and n outputs.
// Indices are listed below :
//
// Modules : s01s02
// Function : ifsel
// Indices : n0x23
// Bit order : 3xxx2
similarity_match_to_left( 
input [7:0] in,
output [3:0] out ); 
// Assigns out2 = in2_bits
//
// Exports :
//
// Inputs :
//
// Outputs :
//
// Module : mm
// Function : namematch
// Indices : nm4xnm6xnm8x50
// Bit order : nx50nm8x6nm4endmodule
