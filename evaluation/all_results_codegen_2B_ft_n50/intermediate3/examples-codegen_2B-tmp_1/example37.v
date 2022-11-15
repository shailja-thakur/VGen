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
always @(posedge clk)
	if (reset)
	// assign r_next to r_reg
	r_reg <= 5'b00001;
always @(*)
begin
case ({r_reg, 2'b0})
5'b000000 : r_next = r_reg; // feed output r_reg for first 5 cycles
5'b000001 : r_next = {r_reg[0], r_reg[4] ^ feedback_value}; // combine input "value" and feedback value
5'b000100 : r_next = {r_reg[2], r_reg[3] ^ r_reg[4] ^ declarationofcounters[3] ^ r_reg[4]}; // modify to generate timing delays
5'b000101 : r_next = {r_reg[1], r_reg[0] ^ r_reg[end
endmodule
