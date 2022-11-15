// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk) begin
    if (reset) begin
        q <= 0;
    end
    else begin
        if (ena && q != 9) begin
            q <= q + 1;
        end
    end
end

module count_fast(
    input clk,
    input slowena,
    input reset,
    input q,
    output reg [3:0] q_prev);
    
always @(posedge clk) begin
    if (reset) begin
        q_prev <= 0;
    end
    else begin
        if (ena && q_prev != 9) begin
            q_prev <= q;
        end
    end
end

struct decade_counter_tb signature {
    input clk;
    // if slowena == 1, use fast decrement
    input slowena;
    //endmodule
