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
// initializing module. sets initial state.

always @ (posedge clk or posedge areset) // 4bit states
 begin
	if (areset == 1'b0) 
	begin
	r_reg <= 5'b00000; //cand contraction 
	end
	// $display("clk: %b ; r_reg: %b",clk, r_reg); 
	else 
	begin
	r_reg <= r_next; // keeps the values updated
	end
end
assign r_next = {r_reg[3:0], feedback_value}; // 4bits with feedback_value at position 3
assign q = r_reg; //outputs values in q 
endmodule
