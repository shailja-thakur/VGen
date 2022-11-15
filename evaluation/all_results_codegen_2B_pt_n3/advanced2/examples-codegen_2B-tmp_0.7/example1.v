// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// The top bit of the q input is always 0.

always @(posedge clk) begin
    if (slowena && !reset)
        q = q + 1;
end

// On the negative edge of the clock:
// If q is not 0, and the ena input is high, reset the output q to 0.
// Otherwise, the ena input of 0 means reset the output q to 0.

always @(negedge clk) begin
    if (slowena && (slowena || (q != 0)))
        q = 0;
end
);

int main() {
    count_slow clk("clk");
    count_slow ena("ena");

    //clk.w <= 0
    //ena.w <= 0
    //ena.w <= 1
    //ena.w <= 1
    //ena.w <=endmodule
