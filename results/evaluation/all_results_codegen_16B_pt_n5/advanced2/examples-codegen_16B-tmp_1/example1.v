// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// if slowena is high, the count only increments every other decade of the clock
always
begin
    if (reset = '1') q <= 0;
    else if (slowena = '1' and (q < 9)) q <= q + 1;
end

always
begin
    clk <= '0';
    if (slowena = '0') begin
        q <= q + 1;
        q <= 9;
    end else begin
        if (clk = '1') begin
            q <= q + 1;
            q <= 9;
        end
    end
end

endmodule
