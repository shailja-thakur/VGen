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
always @(posedge clk or posedge reset) // always block for non-blocking assignment
begin
if (reset) // non-blocking procedural assignment
r_reg <= 5'b00001;
else
r_reg <= r_next;
end
assign q = {r_reg[2:0],feedback_value}; // two most significant bits of r_reg concatenated with feedback
assign r_next = {r_reg[4:3],q[0]}; // assign values in same way as above
assign feedback_value = r_reg[3] ^ r_reg[4]; // xor of positions 3 and 4
endmodule
