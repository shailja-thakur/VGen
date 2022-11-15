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
// assign feedback value concatenated with 4 MSBs of r_reg to r_next
// assign r_reg to the output q
lfsr inst1b(
.clk(clk),
.reset(reset),
.ananzen(1'b1),
.r_reg(r_reg),
.r_next(r_next),
.feedback_value(feedback_value)
); 
// assign the value of feedback_value to the result	 
mux5 to_final (
.r(r_next),
.r_reg(r_reg),
.feedback_value(feedback_value),
.q(q)
);

always @ (posedge clk)
if (reset == 1'b1)
r_reg = 'd {5{1'b1}};
else
r_reg = r_next;

endmodule
