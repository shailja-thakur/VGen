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
{
    if (reset)
    {
        r_reg <= 1;
    }
    else
    {
        r_next <= r_reg ^ (feedback_value & 0x10);
        r_reg <= feedback_value;
    }
}

module main(
    input [5:0] p,
    input clk,
    input reset,
    output [7:0] q
);

// Design a 5-bit maximal-length Galois LFSR with taps at bit positions 3, 5 and 7
module lfsr( 
    input clk,
    input reset,
    output [4:0] q
); 
reg [4:0] r_reg;
wire [4:0] r_next;
wire [7:0] v_reg;
// onendmodule
