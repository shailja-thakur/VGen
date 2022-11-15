// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// After that, q is incremented by 1, and if the ena is high, q is set to 9.
// The first rising edge of the slowena is not counted by the counter.

wire [3:0] q;

initial begin
    q = 0;
    $display(q);
end

always @(posedge clk)
    if (slowena == 1)
        q = (q + 1) % 10;
    else if (q < 9)
        q = q + 1;
    else
        q = 0;

end

endmodule
