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
assign feedback_value = r_reg[2] ^ r_reg[4];
always @ (posedge clk or posedge reset) begin
 if (reset) begin
 r_reg <= {4'b0101};
 end
 else begin
 r_reg <= r_next;
 end
end
// next function returns the next value in r_next, based on r_reg
// xor with feedback value, xor with r_reg
// concatenate r_reg with r_reg shifted left 1
function [4:0] next;
input [4:0] r_reg;
begin
 next = {r_reg[4], r_reg[3] ^ r_reg[4], r_reg[2] ^ r_reg[4], r_reg[1] ^ r_reg[4]};
 end
endmodule
