// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge slowena or posedge reset)
begin : INCREMENT
if (reset)
q <= 1;
else if (slowena && q < 10)
q <= q + 1;
if (q == 10)
q <= 0; // 0 is 11 when counting if (q == 10)
end
endmodule
