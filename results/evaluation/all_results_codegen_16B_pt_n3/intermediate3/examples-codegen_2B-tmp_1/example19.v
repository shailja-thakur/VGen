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
initial begin 
    r_reg = reset_value;
    r_next = r_reg;    // r_next = r_reg (default)
    
    feedback_value = clk ^ reset;    // feedback value
    q <= feedback_value ** r_next;   // assign q to the xor of bit positions 2 and 4 of r_reg

    r_next = r_reg;            // r_next = r_reg (default)
    r_reg = r_next;            // r_reg = r_next
    r_next = feedback_value; // r_next = feedback_value ^ (clk ^ reset -- device bit reversed)
    r_reg = ( r_next |
              reset_value ); // r_reg = ~(((r_next ^ reset) >> (itr_value)) & reset_value)
end 
endmodule
