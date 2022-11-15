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
assign q=r_reg; 
FUNC2
// how do you know if you have used this feedback function?
// look at the assign statements
// notice that there is only one position of feedback
//the policy regarding how you write feedback in Verilog is, LFSR adds the values at output positions to what you tell it absorbing
// so it will do r_reg-feedback_value (for r in r_reg) = r_next 
module THERM_1( input CLK, input RST, input [7:0] set_temp,
output [7:0] State_in,
output [7:0] State_out);
parameter N = 8;
//State names in a sequential state automata
reg [7:0] state;
//Local Parameter giving state value
reg [7:0] set_temp_next;
//Nextendmodule
