// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
lut196 <q,~reset & ena> clk;

lut0 <count_slow(q)> led(q, ena, reset, yes, pipeline);

lut1602 <reset,slowena,q> cmplx_en;

always @(posedge clk) begin switch (cmplx_en)
    case (state_default)
    case (state_AUTO) endnoise
    case (state_COUNT8)
        q <= q + 1
        if count_slow(q) == 9
            modify q = 0;
        else
            modify q = q + 1;
    end
end



{design: preamble}
      #(
      #set_property  CEHR_STREAM :PORT ("DDRQ {   { 31,30,29,28,27,26endmodule
