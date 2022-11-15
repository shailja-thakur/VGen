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
assign q = r_reg;
// define the state table
always @(*)
begin
	case(r_reg)
	// define the state table
	5'b00000: r_next = 5'b00001; // state 0
	5'b00001: r_next = 5'b00010; // state 1
	5'b00010: r_next = 5'b00011; // state 2
	5'b00011: r_next = 5'b00100; // state 3
	5'b00100: r_next = 5'b00101; // state 4
	5'b00101: r_next = 5'b00110; // state 5
	5'b00110: r_next = 5'b00111; // state 6
	5'b00111: r_next = 5'b01000;end
endmodule
