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
always @ (posedge clk, posedge reset)
begin
	if (reset) r_reg <= 1'b1;
	else r_reg <= r_next;
end
assign q = r_reg;
assign r_next = {r_reg[1:0], r_reg[3:2]^reset};
wire [3:0] feedback_wire = r_next[3:1]_inv ^ r_reg[4];
//wire q_and_routput_sum;
assign feedback_value = (r_reg[4]^reset) ? 
back_porch :
(r_reg[4]^reset) ? ((feedback_wire[2]^feedback_wire[1])^feedback_wire[3]) : 
back_porch;
endmodule
