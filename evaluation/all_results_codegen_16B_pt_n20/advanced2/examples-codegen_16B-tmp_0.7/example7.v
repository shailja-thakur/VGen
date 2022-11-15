// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// 
// On the negative edge of the clock:
// if reset is high, set the output q to 0. 
// Otherwise, only decrement the output q if the ena input is high and q is not 0.


always begin
    if (reset) q <= {0,9};
    else if (slowena && q != 9) q <= {1,8,7,6,5,4,3,2,1,0};
    else if (slowena && q != 0) q <= {-1,-2,-3,-4,-5,-6,-7,-8,-9};
end

endmodule
