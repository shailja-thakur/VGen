// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk) begin
if (reset && slowena)
q <= q - 1'd1;

// If the input is high and the counter is 10, set the output to high. Apply bitwise
// xor to the previous output and the input to see if the value has changed. If the
// output is not equal to the input, increment q, otherwise output the value of q.
else if(q == 4'd9 && slowena)
q <= 4'd1;

else if(slowena)
q <= q + 4'd1;
end
endmodule
