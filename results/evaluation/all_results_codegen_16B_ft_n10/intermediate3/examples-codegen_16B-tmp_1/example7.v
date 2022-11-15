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
assign r_next = (((r_reg >> 1) ^ r_reg) ^ {feedback_value, q[4]} );
// if clk is high then set the state, else leave q as is
assign q = (clk) ? r_reg : 5'b0;
assign feedback_value = q ^ q[3];
// define state at each clock cycle
always @ (posedge clk) 
begin
if (reset) r_reg <= 5'b0; // correct way to assign a bit and8 to a port when using plain text?
else r_reg = r_next;
// this could all be written as: assign r_next = r_reg;
end
endmodule
