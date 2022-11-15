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
always @(posedge clk)
begin
    if (reset)
    begin
        r_reg <= 1;
    end
    else
    begin
        r_next <= r_reg xor (r_reg[4:0] & 0b00001111);
    end
end

// This is the LFSR implementation for the Galois LFSR
// It is a minimal implementation that only uses the
// Galois LFSR.
//
// The Galois LFSR is a feedback register that can be used
// to generate LFSRs.
//
// The Galois LFSR is defined by the following equation:
//
// x_n = x_{n-1}^x_{n-2}
//
// where x_0 is the initial value of the LFSR, x_n is the
// value of the LFSR after nendmodule
