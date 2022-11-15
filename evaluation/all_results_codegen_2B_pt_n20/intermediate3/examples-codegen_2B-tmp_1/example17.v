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
always @( posedge clk )
  r_next <= feedback_value ^ r_reg;
  r_reg <= r_next ^ (bit(5)<<5 | bit(3)<<3 | bit(2, 0));
  feedback_value <= r_reg; 
  q <= r_reg;
"""



ASYNC_CODE_WEAK = cythonize(m).extract_unused_sourcefiles()

if __name__ == '__main__':
    p = multiprocessing.Pool(2)
    f = p.apply_async(worker)

    lfsr_clk = s0+s1+s2+s3
    lfsr_reset = s5+s6+s7
    clk = lfsr_clk  - async_done
    reset = lfsrendmodule
