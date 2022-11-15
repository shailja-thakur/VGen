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
en #100 feedback_value= q[2] ^ q[4];
always @(posedge clk, posedge reset)
begin
	if (reset)
	begin
 
// corner case: if the input is equal to the feedback value,
// the output should be identical to r_reg
// therefore need to hold the output at that number 
 
// hold the output of the first cycle to 0 to prevent
// large encoding errors
q <= 0;
 
// reload r_reg to be 1 to prevent a sequence described in the next Outline
// intended as debug view
r_reg <= 13;
end
else
begin
q <= r_next;
r_reg <= r_next;
end
end
assign r_next = r_reg^feedback_value;
endmodule
