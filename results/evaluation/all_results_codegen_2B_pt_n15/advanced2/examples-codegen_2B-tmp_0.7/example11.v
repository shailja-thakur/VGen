// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(clk, slowena, reset) begin
    if (slowena == 0)
    begin
        if (reset == 1')
        begin
            q <= 0;
        end
    end
    if (slowena == 1)
    begin
        if (q == 9)
        begin
            q <= 9;
        end
    end
end
// On the negative edge of the clock:
// if slowena is high, increment the output q.
always @(clk, reset, slowena) begin
    if (slowena == 1)
    begin
        if (q == 0)
        begin
            q <= 9;
        end
    end
end
// The user must manually assert the outputs.
// Note that the 'slowena' input is currently high only on the faster clock.
wire [3:0] q;

initial begin
end
endmodule
