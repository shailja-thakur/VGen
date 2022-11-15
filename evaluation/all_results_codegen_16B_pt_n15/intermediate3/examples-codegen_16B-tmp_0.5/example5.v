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
assign q = r_next;

// define the state of the LFSR
reg [5:0] state;
// set state to 1
assign state = 1;
// define the feedback value
reg [4:0] feedback;
// set feedback value to 0
assign feedback = 0;

// define the initial state of the LFSR
reg [5:0] init_state = 1;
// define the initial feedback value
reg [4:0] init_feedback = 0;

// define the maximum number of iterations
reg [5:0] max_iterations;
// set max_iterations to 5
assign max_iterations = 5;

// define the clock frequency
reg [5:0] frequency;
// set frequency to 1000
assign frequency = 1000;

// define the clock frequency
reg [5:0] frequencyendmodule
