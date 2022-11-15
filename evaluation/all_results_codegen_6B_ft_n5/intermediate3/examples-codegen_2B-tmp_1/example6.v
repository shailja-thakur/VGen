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
// assign feedback value concatenated with 4 MSBs of r_reg to r_next
// assign r_reg to the output q
always @(posedge clk, posedge reset)
begin
	if (reset)
	begin
	q <= 5'b00000;
	r_reg <= 5'b0000001;
	end
	else if (exchanged_digit == 4'b0101)
	begin 
	// for all call r_next <- {1'b0, r_reg[4:1], r_reg[0] ^ feedback_value}
	/*
	r_reg[4]	-> 11	iu
	r_reg[3]	-> 14	4h
	r_reg[2]	-> 13	ic
	r_reg[1]	-> 10	ix
	r_reg[0]	-> 11	iu
	r_next[4]	-> {1'b1, r_reg[5], r_reg[4], rend
end
endmodule
