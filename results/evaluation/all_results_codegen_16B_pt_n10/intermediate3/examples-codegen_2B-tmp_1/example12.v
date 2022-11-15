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
defparameter [vcd_width_bits_only()] reg lfsr( r_reg, feedback_value, r_next );
begin   : * on reset rod( reset, r_reg )
    + load r_next[<log(4)+1:0>] from r_reg[<log(4)+1:0>]
    + dot r_next = 1'b1 ^ feedback_value
    + r_next[log(4)+2:0] = r_next[log(4)+2:0] << 1 | feedback_value;
    + ldap2dx()
    + W1:=W0, WOR(#)
    + parity_corr( {OP(W2D), OP:=W3D, OP_x:=W4D})
    + sft(#)
    + lfsrpoly(end
endmodule
