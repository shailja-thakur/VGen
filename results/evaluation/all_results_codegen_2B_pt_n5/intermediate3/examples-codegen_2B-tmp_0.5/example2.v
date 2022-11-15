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

always @(posedge clk)
    if (reset)
    {
        r_reg = 0x0;
        r_next = 1;
        feedback_value = 0;
    }
    else
    {
        r_reg = r_next;
        r_next = r_reg >> 1;
        feedback_value = (r_reg & 1) ^ (r_reg >> 2);
        r_reg = r_reg >> 1;
    }

// for each bit position 4 to 0
for (int i = 0; i < 4; i++)
{
    // assign r_next to the output q
    q[i] = r_next ^ feedback_value;
    // increment r_next and assign r_next to the output q
    r_next = r_next << 1;
    r_next = rendmodule
