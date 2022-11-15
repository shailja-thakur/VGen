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
always @(posedge clk or posedge reset)
begin
if(reset)
r_reg <= 5'b00000;
else
r_reg <= r_next;
end
assign q = r_reg;
assign r_next = {q[0], q[4:1] ^ q[2:0]}; // bitwise xor of r_reg and {q[2:0], q[4:3]};
assign feedback_value = q[4] ^ q[0]; // bitwise xor of q[4] and q[0];
endmodule
