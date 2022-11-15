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
// Feeds a random number into the DB111 long LSFR function (combinatorial)
initial r_reg = 5'b0;
bitwise binary_to_bc #MAX50495 (.c({q[3],q[2],q[1],q[0]}), {r_reg[0],r_reg[1],r_reg[2],r_reg[3]}) /* synthesis symbol bitwise_binary_inst*/;
concat # (1) {%.0vrvhbsdonevfvf(VF,H,B,D)} 
inst_concat # (MAX50495) R1 (.inc(1'b1),
.alsoEBAR(r_reg(1))
);
always @(posedge clk = r_reg[4] ^ r_reg[3])
begin 
#1 r_reg = r_next;end
endmodule
