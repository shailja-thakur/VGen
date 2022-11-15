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
r_next = 1;
feedback_value = dff('x', clk, r_reg);
clk <=1;
r_reg <= 0;
q <= next_state(r_next, feedback_value); 


// multi_state_encoder model

//--- multi_state_encoder --------------------------------------------------

// Outputs per bit are fed into the multiplexer with all leading zeros (0-width)
// frames containing N inputs per bit where N is M (substrate width)
// inputc is the M'th input from the array inputc[]
// this is used as the mapping for each physical input to the input to the 8x8 
// simplex in which the 4-bit output goes into the corresponding 4-bit positive link
// of the 8x8 ultra4 input, the result of this simplification is the input bit 
// to theendmodule
