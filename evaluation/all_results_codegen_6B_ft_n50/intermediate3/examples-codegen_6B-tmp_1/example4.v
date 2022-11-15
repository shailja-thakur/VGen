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
generate 
case(`P_PATIENCE + `T_PATIENCE)
8: // 4+3+3+2+1+1+1+1 = 15
0: r_next <= q[4] ^ q[0] ^ q[2];
default:
1:r_next <= q[4] ^ q[3] ^ q[1] ^ q[2];
endcase
endgenerate
// to keep the KEEP bits on the output of the interconnect module, it
// should be driven directly into the chip and the Z-valid signal should also
// be a wire driving into the interconnect module
assign keep_bit1 = r_reg;
assign keep_bit1a = r_next;
bit_counter concat (clk,q[3],1'b1,1'b0,r_reg,_r,endmodule
