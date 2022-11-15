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
initial begin   // keep r_reg & r_next as inputs for the pipeline
   pipeloop:
    clk <= clk;
    r_reg <= r_reg_init;
    feedback_value <= latch_y;
    r_next <= r_reg;
    q <= (r_reg[4:0] EXSC[] [5]);
end;
// the control structure expects r_next to be buffered from a past assignment too
reg [4:0] r_feedback;
wire [4:0] feedback_data;
wire [4:0] expected_value;
wire [4:0] r_max_val;
reg [4:0] r_expected_value;
wire [4:0] r_prev_bits;
wire [5] mask_value;
initial begin 
    clk <= clk;
    endmodule
