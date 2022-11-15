// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or negedge slowena[1:0])
    if (reset) 
        q <= 0; 
    else if (ena())
        if (q < 9) q++
            else q = 0;
//! Remember to remove @ when you submit your code

// On the negative edge of the clock:
// reset the output to 0. 

always @(posedge reset or posedge ~reset)
    if (reset) q <= 0;
 
// Whether 0 is high depends on slowena, and whether 9 is high depends on ena.

always @(posedge clk)
    if (slowena[1])
        q <= 9
    else
        q <= 0;endmodule
