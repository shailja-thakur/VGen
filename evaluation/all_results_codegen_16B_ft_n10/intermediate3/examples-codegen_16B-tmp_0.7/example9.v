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
assign q = (reset)? 5'h1 : r_reg;
assign feedback_value = r_reg[2] ^ r_reg[4];
// instantiate two shift registers as fshift1 and fshift2
// instantiate three muxes as mux1, mux2 and mux3
// instantiate r_next as fshift1
// instantiate r_reg as mux3
generate
if (LFSR_TAP == 5)
begin: tap1
assign r_next[0] = feedback_value;
assign r_next[4:1] = r_reg[4:1];
end
else if (LFSR_TAP == 3)
begin: tap2
assign r_next[0] = feedback_value;
assign r_next[3:1] = r_reg[4:1end
endmodule
