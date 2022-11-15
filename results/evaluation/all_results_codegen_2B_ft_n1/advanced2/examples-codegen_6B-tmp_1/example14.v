// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
count_slow:always
begin
    if (slowena =0) begin
    end else begin
    add 1 reg q;
    end
end

r <= 1; q <= 8; count_slow <= slowena & r & q & q < 10;
endmodule
