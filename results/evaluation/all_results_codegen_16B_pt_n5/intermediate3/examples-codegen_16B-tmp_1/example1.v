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
assign q = r_reg;

(* lfsr_internal  *)
	in d (clk,reset), 
	p # 12,a,b (2),r_reg(b23{5,3}), q
	(* watchdog setup  *)
	pn a begin while ((q != 0) | d) end pn b less than a*8
	(* register target  *)
	constant d = a*8 - p + 15 = {19,15,13,11, 9, 8, 7}
	(* register declarations  *)
	constant p = 12
	constant a = 2
	(* macros for writing regs  *)
	always @(p) begin 1'd0 r_reg = 1'd0; end  // initial value for <reset>
	always @(a) begin r_reg = r_reg<<1 | 1'd0end
endmodule
