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
// In r_next update the state, in q update the next state and
// in feedback_value update the random number
always @(posedge clk) //r_reg 
if(reset)
	r_reg <=5'b0001
else
	r_reg <= r_next;
assign r_next ={r_reg[0], r_reg[4], xor_operation}; //create r_next = {r_reg[0], r_reg[0], xor_operation};
assign feedback_value = {r_reg[2], r_reg[4]}; //{r_reg[4], r_reg[2]};
// U6.1
// 3 most significant bits of r_reg successively reduced.
// U6.2
// r_next is divided by 2.
assign q = r_reg/2;
endmodule
