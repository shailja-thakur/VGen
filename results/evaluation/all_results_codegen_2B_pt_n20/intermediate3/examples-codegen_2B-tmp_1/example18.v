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
always @( posedge clk ) // reset_value PRECAP DDR=OUTI
  {
    r_reg = 1'b0 << 5 | 1'b0 << 3;
    feedback_value = 1'b0 << 2 ^ r_reg [3:0];
    r_next = (r_reg ^ (r_reg >>> 1)) & 0b10'11;
    feedback_value = 1'b0 << 2 ^ feedback_value;
    q (Wbptr (r_reg, 3, reset));
  }
#FEO
endmodule
