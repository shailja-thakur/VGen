// Design a 5-bit maximal-length Galois LFSR with taps at bit positions 5 and 3
module lfsr( 
    input clk,
    input reset,
    output [4:0] q
); 
reg [4:0] r_reg;
wire [4:0] r_next;
wire feedback_value;
// on reset set the value of r_reg to 1
// otherwise assign r_next to r_reg
// assign the xor of bit positions 2 and 4 of r_reg to feedback_value
// assign feedback concatenated with 4 most significant bits of r_reg to r_next
// assign r_reg to the output q
@always @(posedge clk)
//clock pulse from an un-shifter
    if ( /\Range(r_reg,0,31)=/>=({modulo}, 1)
      	  not_prime(r_next, r_reg, 3)
		  and ~({modulo} == 0 or x=="/>=({modulo},1)
		  not_prime(r_next, r_reg, 24)
		  and r_next!=0 // could me more sure of this?
		  and /\Range(r_next,0,23)+/>= ({modulo},1) />= ({modulo},0)
      	  concate({modulo, 1, -1}, {modulo, r_next & 1, r_next >> bit<w>, feedback_value & r_next & 1, feedback_value >> bit<endmodule
