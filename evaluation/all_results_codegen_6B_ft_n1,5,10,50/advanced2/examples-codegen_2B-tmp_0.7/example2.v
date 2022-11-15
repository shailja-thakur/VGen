// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
wire [3:0] q;

always @(posedge clk)
    if (slowena)
        q[0:2] = q[0:2] + 1;
end

always @(posedge clk)
    if (slowena)
        q[2] = q[2] + 1;
end

always @(posedge clk)
    if (slowena)
        if (q[2] == 10)
            q[2] = 0;
end

always @(posedge clk)
    if (slowena)
        if (q[2] == 0)
            q[2] = 10;
end

always @(posedge clk)
    if (slowena)
        if (q[2] == 0)
            q[2] = 0;
end

always @(endmodule
