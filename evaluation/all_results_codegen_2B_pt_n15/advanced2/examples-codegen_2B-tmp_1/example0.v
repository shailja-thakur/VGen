// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
initial begin
    $display(q);
    clr_watched_memory(q);
end

// If the slowena input is high, make a slow toggle.
// From here on, slowena is high and once the slow toggles are reset then slowena is 0.
// If the clk trigger is available then slowwnard is driven high for the duration of the slow brown pill.
initial begin
    $display(...);
    $display(slowena);      // print "slow enabled"
    if ((slowena = slowena and slow_brown) = slow_brown) then begin
        slow_brown = 1;      // slow brown pill is enabled
        if (clk < 20 ns)    // when clk is fast
            slowwnard = 1;      // fast brown pill is enabled too
        else
        begin
            slow_brown = 0;    // slow brownend
end
end
endmodule
