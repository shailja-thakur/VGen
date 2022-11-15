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
assign r_next = (reset) ? 5'b00000 : // on reset
 (feedback_value^r_reg[4]) ? r_reg : // if bit 2 is 1
 r_next; // otherwise do not change the value of r_reg
wire feedback_value_xor;
assign feedback_value_xor = (r_reg[2] == 1'b1) ? 1'b1 : 1'b0;
assign feedback_value = r_reg[4] ^ r_reg[3] ^ feedback_value_xor;
always @ (posedge clk)
begin
r_reg <= r_next;
end
assign q = r_reg;
endmodule