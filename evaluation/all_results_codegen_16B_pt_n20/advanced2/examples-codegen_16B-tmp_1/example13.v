// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk or (reset or ~slowena))
begin 
if (reset | ~slowena) begin
q <= 0;
else begin
if (!(quadre[0] & q) & q != 9) {
    q <= q + 1;
}
end
end

// Create a 24-bit counter that decrements from 24 to 2, inclusive.
// As with the decade counter, we use two counters, each down to 9, to
// model a wider decrement.

module count_fast(
    input clk,
    input fastena,
    input reset,
    output reg count);

// The first counter counts from 2 to 7 inclusive. 

always @(posedge clk or (reset or ~fastena))
begin
if (reset | ~fastena) begin
    count <= 0;
else if (counter[0end
end
end
endmodule
