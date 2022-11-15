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
assign r_next = r_reg ^ {r_reg[4],r_reg[2]};
// kaleidoscopic lfsr construction
always @ (posedge clk) begin
if (reset) begin
	r_reg = 5'b00000;	
	
end else begin
	
	// after x cycles of clk trailing zeros are removed
	// r_reg inverts that number.
	// e.g. after 6 cycles, r_reg = 1100 becomes 0000 and therefore r_next = 0000
	// 100x cycles then 1100 then 10000 = 01000
	// 100x cycles then 01000 then 100x again = 01000
	// 101x cycles then 01000 then 100x again = 100x
	// etc
	r_reg = r_next;
	
end
end
assign q = r_reg;
endmodule
