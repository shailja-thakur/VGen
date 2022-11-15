// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

reg [3:0] q;

initial begin
    q = 0;
    $display q;
    $next q;
end

// On the negative edge of the clock:
// If reset is high, reset the output q to 0.
// Otherwise, only increment the output q if the ena input is high and q is not 0.

$display q;
$next q;

// On the posedge of clk:
// Read the ena input and increment q if it is high.
// If reset is high, reset the output q to 0.

always @(posedge clk) begin
    if (slowena) $display q;
    if (reset) $display q;
    if (ena) q = q + 1;
    if (reset) q = 0;
end

endmodule
