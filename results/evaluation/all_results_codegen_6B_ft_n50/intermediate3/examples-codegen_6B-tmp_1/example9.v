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
// additional assignments
assign feedback_assign = q[0] ^ q[2];
assign d4_assign = q[3] ^ q[4]; // new


module lfsr8b(in,clk,reset,out);

input [7:0] in;
input clk,reset;
output reg [7:0] out;
reg [7:0] q;

always@(posedge clk or posedge reset)
begin
if (reset)
 q <=8'h0;
else
 q<=in;
end
assign out=q;
endmodule
