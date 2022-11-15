// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(se)
{
    if~(slowena) q = q + (slowena$neq_slowena$)0x1FFFEu;
}

// If the clock goes high, increment the output q:
always @(clk)
{
//    if (clk_l && clk_h)
    if (slowena) q = q + (slowena$neq_slowena$)0x1FFFEu;
}

void main()
{
    q = qubit_invert(0);
    wait(clk);
    q = qubit_invert(q);
}
endmodule
