// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

// On the positive edge of the slowenable input:
// if reset is high, reset the output q to 0. 
// Otherwise, increment the output q if slowena is high.

//Note that reset should be high at the function beginning.
void count(
    input clk,
    input slowena,
    input ena,
    input reset,
    output reg clrq,
    output reg [3:0] q);

always @(posedge clk) if (clrq) q <= 0;
always @(posedge clk or posedge slowena) if (ena) q <= 9;
always @(posedge clk) if (reset) q <= 0;
`export count_slow
endmodule
