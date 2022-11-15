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
assign feedback_value = r_next XOR ( r_reg &= 5; r_next = r_reg & 3; r_reg = r_reg + 1 );

// conditional Concatenate feedback will be equivalent to concatenate r_next and ( r_reg XOR 5)
// where r_reg contains the feedback value of the least significant bit. The output q will be set to 0x4 and the feedback value for the least signed bit has 4 bits zeros. 
assign r_next = r_next CONCATENATE (( r_reg XOR 5 ), r_next);
assign q = q M5;

barrier_initial(0);

reg [4:0] feedback_reg;
register uint8_t p_val;

wire [8:0] pdata;
wire output_data;
assign output_data = [endmodule
