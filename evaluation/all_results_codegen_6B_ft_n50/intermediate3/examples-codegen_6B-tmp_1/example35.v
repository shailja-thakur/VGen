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
// Also have q as output
always @(posedge clk or posedge reset)
begin
if(reset == 1)	 // set values to final 0
r_reg <= 5'b11111;
else
begin
r_reg <= xor(
xor(r_reg[4:2],r_reg[2]), 
xor(r_reg[0], feedback) 
);
end
end
//out = r_reg;
assign q = r_reg; // observe the output
endmodule
