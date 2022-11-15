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
always @( posedge clk, posedge reset ) 
begin
 if (reset)
 r_reg <= 5'b0001;
else
 r_reg <= r_next; 
end 
assign q = r_reg; //outputs the value in register
assign r_next = q[4:2] ^ q[0]; // sets the next value in the register to be the xor of the previous value and the third bit value
assign feedback_value = r_reg[4] ^ r_reg[2]; //sets the feedback value to be the xor of the fourth bit previous value and the third bit value
endmodule
