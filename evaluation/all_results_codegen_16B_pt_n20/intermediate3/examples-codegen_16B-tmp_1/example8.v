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
always @(posedge clk) begin
    if (reset == true) begin
        r_reg <= 1;
    end
    else begin
        r_next <= r_reg @ xor(r_reg << 2) @ feedback_value;
        q <= concat(r_reg[4], r_reg[3]);
        r_reg <= r_next;
    end
end
// This first state transition makes fextended to 1
// and the following transition to the other values at the proper bit positions
Battery_boost_waveform_demo1

Battery_boost_waveform_demo2 Battery_boost_waveform_demo2

Battery_boost_waveform_demo3 Battery_boost_waveform_demo3

Battery_boost_waveform_demo4 Battery_boost_waveform_demo4

Battery_boostendmodule
