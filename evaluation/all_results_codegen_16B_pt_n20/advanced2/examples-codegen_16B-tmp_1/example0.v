// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
mediumpathclocks: if ((reset > 0) && (q = 0)) begin
resetq: begin
    q = 0;
end

// q < 10, set q += 1
incq: begin
    if (q != 9) begin
        q = q + 1;
end

// fastena = 1, increment only on positive edge of clock.
// fastena = 0, increment on any edge of clock, reset to 1 at a positive edge. 
counter_inc: begin
    q = q + 1; if (fastena > 0) nor (q = 9); end else begin
    q = 0;
end
end

always begin
    clk = 1;
end

always begin
    count_slow.clk(clk);
end

always begin
    slowena = reset;
end

always begin
    reset = 0;end
end
endmodule
