// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
ISR(gclk_ch_t::intr_cb_t)
{
    if ( clk::pins::low(reset))
    {
        clk::settow(slowena, q[2]);
        q[2] = 0;
    }
    else if ( clk::pins::low(slowena))
    {
        if ( clk::pins::low(q[2]) and q[2] < 9)
            q[2] = (q[2] + 1) & 0xFF;
    }
}

module count_fast( 
    input clk, 
    input fastena, 
    input reset,
    output reg [9:0] q);

// On the positive edge of the clock:
// if reset is high, set the input fastena to 1 and base the counter over 64 bits.endmodule
