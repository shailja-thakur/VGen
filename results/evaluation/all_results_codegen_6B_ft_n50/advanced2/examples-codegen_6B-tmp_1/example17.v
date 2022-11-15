// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or posedge reset)
 if (reset) q <= 4'b0000;
 else if(slowena)
 case(q)
 4'b0000: q <= 4'b0001;
 4'b0001: q <= 4'b0010;
 4'b0010: q <= 4'b0011;
 4'b0011: q <= 4'b0100;
 4'b0100: q <= 4'b0101;
 4'b0101: q <= 4'b0110;
 4'b0110: q <= 4'b0111;
 4'b0111: q <= 4'b1000;
 4'b1000: q <= 4'b1001;
 4'b1001: q <= 4'b1010;
 default: q <= 4'b1010;
endcase

//Define a 40-bit binaryendmodule
