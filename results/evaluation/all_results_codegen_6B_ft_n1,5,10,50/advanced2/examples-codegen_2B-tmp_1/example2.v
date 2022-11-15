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
    q[els-1] = (slowena==1?0:q[els-1]+1);
    if (reset==1)
        q = {0,0,0};
end
// Input from low to high:
// Update the output q if the low inputs are all equal.
always @(slowena==1 and
       slowqpp==slowqpl and
       slowqp1==slowqpl and
       slowqp11==slowqpl) begin
      q[els-1] = q[els-1-3];
end
endmodule
