// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
task main()
{
   if (slowena != 1'b0)
       q[1:0] <= q[0];             // Increment output q if reset is low & unsigned input q is low
    else
       q[1:0] <= 63'b0000_1000;    // Set output to bit[2:0] = 0 or null value
    delaya(clk^reset);
    clk <= clk;
}

// Notes:
// - We don't include a delay cycle needed to make sure the output is updated. 
//   Instead, we make sure the next clock cycle is the rising edge.
// - Holding the reset line low more than once causes a blackhole.
endmodule
