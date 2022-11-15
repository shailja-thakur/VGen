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

decoder3 a0(2'b01,1'b0,m,d);

piporeg a1(clk,1'b1,r_next[0],q[0]);
piporeg a2(clk,1'b1,r_next[1],q[1]);
piporeg a3(clk,1'b1,r_next[2],q[2]);
piporeg a4(clk,1'b1,r_next[3],q[3]);
piporeg a5(clk,1'b1,r_next[4],q[4]);

//always@(posedge(clk))
//	q <= r_reg;

d_flip_flop D1(feedback_value, clk, clr_bar,d[endmodule
