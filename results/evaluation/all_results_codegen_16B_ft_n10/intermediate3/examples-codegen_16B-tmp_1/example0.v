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
assign q = r_reg; 
assign feedback_value = ^{r_reg[2:4]};
assign r_next = r_reg ^ feedback_value;
always @ ( posedge clk ) begin 
if ( reset ) r_reg <= 15'b1 << 15;	// set value of output register to 1, but allow it to be zero by XORing with all zeros
else end 
endmodule
