// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk)
begin
 if (slowena == 1'b1 && reset == 1'b0)
 q = 4'd4;
 if (slowena == 1'b1 && q == 4'd9)
 q = 4'd4;
 if (reset == 1'b1) // slowena == 1'b0 is default value... if reset comes in after the slowena line, then q is reset to 0.
 q = 4'd0;
end
endmodule
