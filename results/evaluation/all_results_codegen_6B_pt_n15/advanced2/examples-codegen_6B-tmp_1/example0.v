// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @ (clock) begin
    if (reset) begin
        q <= 0;
    end
    else begin
        if (slowena && !q[2]) begin
            q <= q[0] + 1;
        end
        else begin
            q <= q[0];
        end
    end
end

// On the negative edge of the clock:
// when E is valid and Q <= 9, reset the output Q back to 0.
// Just before the positive edge of the clock, if the enable signal is high,
// and the previous value of Q is not 9, then 160 + value(Q) is incremented.
always @ (clock ~slow) begin
    if (!slowena && q[2]) begin
        q <= 0;
    end
    else begin
        if (q <= 9) begin 
            q <= 160 + value(q[0]);end
end
end
endmodule
