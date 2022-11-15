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
always @(posedge clk, posedge reset)
	begin
	if (reset)
	// Will push reset in next clock cycle because of procedural assignment
	// ensures cross-clocking part of design
	r_reg <= 5'h1;
	else
	// else part of procedural assignment
	r_reg <= r_next;
	// ljudka
	end
// combinational portion of design
assign feedback_value = ~(r_reg[4] ^ r_reg[2]);
// CONCATENATED VERILOG CODE
// Bit logic table
// STAGE 1
// logic described in JEE 2006, p. 6-163
// extract XOR output from logic
// STAGE 2
// logic described in JEE 2006, p. 6-164
// concatenate output of stage 1 with output of stage 2 (XOR operation)
// STAGEendmodule
