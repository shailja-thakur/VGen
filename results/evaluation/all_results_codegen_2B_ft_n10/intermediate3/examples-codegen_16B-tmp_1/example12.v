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
assign r = ~(r_reg|clk)&reset; 
assign feedback_value = r_reg[2] ^ r_reg[4];
assign q = r_reg ^ feedback_value; 
always @ (negedge clk or posedge reset) //new circuit to reset the register
begin
if (reset)
begin
r_reg <= 4'b1001; //xor of r_reg and a 5 bit vector of 1000s
#3 r_reg <= 4'b0000; //assign r_next to input as a reset
end
else
begin
r_reg <= r_next; //always take the next value of r_reg for our function
end
end
endmodule
