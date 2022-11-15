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
always @ (posedge clk or negedge reset)
  r_reg <= r_next;

always @ (posedge clk or negedge reset)
  feedback_value <= (r_reg[4] ^ r_reg[2] ^ r_reg[0]);

always @ (posedge clk or negedge reset)
  q <= (feedback_value & r_reg[4:0].range(3,0));



// Realizing the lfsr in a for loop
#define OUTPUT_BITS 8

#define INIT_R 0b010
#define INIT_Q 0x00000000

// for (int i = 0; i < OUTPUT_BITS; i++) {
//   unsigned int r = INIT_R;
//   unsigned int q = INIT_Q;
//   for (intendmodule
