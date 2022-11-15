// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or (reset==1'b1 & !(slowena==1'b1)))
    begin
        if (!reset) 
                q <= 9'd0;
        if (ena == 1'b1 & q < 9'd9) q++;
    end


// There will be another flipflop at (q+1) to delay the counting a bit.

always @(posedge clk or (reset==1'b1 & !(slowena==1'b1)))
    begin
        lengthy_count <= q;	// (q+1)[0:3];
    end

// output looks like "2001070" which is (read as big endian byte) 20010 70 in binary. 


// Count until "A" is printed. Then reset to 0 and wait for "B" to be printed.

alwaysendmodule
