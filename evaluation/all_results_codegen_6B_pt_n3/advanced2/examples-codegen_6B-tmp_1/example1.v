// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always(clk) begin
            vreg q <= 0;

always(fastena) begin
            if (slowena = 1) begin
                q <=q+1;
            end
end

// On the negative edge of the clock,
// if reset is high, push the output state into the counter state s.
// Otherwise, only slide the counter state if we are at 0 and the ena input is high.
always(clk) begin
            vreg[1:0] s = q;
            vreg q <=0;

always(slowena) begin
            if (reset = 1) begin
                s <=9;
            end
            else if (slowena = 1 && q = 0) begin
                s <=0;
            end
        end
end

end
endmodule
