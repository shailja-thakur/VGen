// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

wire state;

always @(posedge clk) begin
    if (slowena)
        state = (state + 1);
    // if (reset)
    //     state = 0;
end


always @(posedge clk) begin
    q[0] = state;
    q[1] = state;
    q[2] = state;
end


initial begin
    state = 0;
end

endmodule
