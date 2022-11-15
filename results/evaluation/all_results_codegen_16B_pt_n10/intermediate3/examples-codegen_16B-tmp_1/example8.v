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
reg r_sel_mul = 0;
ml(
    if (reset = '0') r_reg = 1;
    else {
        //Write ACC into feedback_value
        feedback_value = accboot;
        //Write feedback_value into r_next
        r_next = r_reg;
        //Write r_next into r_sel_mul
        r_sel_mul = 3;
    }
    == {1:0, 0:1} + {1:0, 0:0} + {1:0, 0:1} + {1:0, 0:0} 
    == {0:0, 0:1, 1:0, 1:0, 1:0} 
);
lfsr(
    clk == clk'0 || r_sel_mul != po2(r_selendmodule
