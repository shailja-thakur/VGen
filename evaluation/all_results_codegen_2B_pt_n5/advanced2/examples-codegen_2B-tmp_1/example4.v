// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Otherwise, return the output q to the caller.

input clk_pll, clk_b6862: in [3:0];
input slowena_b6862, slowena_pll, reset_b6862, reset_pll;  

variable count_b6862: in [1:0];
variable Detecto_init, Count_init;

initial count_b6862 = 0;
initial Detecto_init = clk;  // PLL
initial Count_init = 0;  // initialize out interface

always @ (pll_3820_pllout,slowena_b6862,reset_b6862)
// read the pll3948_b6861
$var_pll;
    if (slowena_b6862 == 1) $var_pll = $var_b6862[3];
endmodule
