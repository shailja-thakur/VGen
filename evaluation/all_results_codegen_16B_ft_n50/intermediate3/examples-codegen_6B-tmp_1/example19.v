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

if(reset!=1'b0)
{
    r_reg = 4;
    feedback_value = 4;
    r_next = feedback_value ^ r_reg;
}
else
{
    r_reg = r_next;
}
resp<4> sdram_data_val;
generate hlsl_all variations ( 
    sdram_data_val(dram_data)
    | .r_next(r_next)
    | .feedback_value(feedback_value)
    | .fsram(sdram_data)
);
endmodule
