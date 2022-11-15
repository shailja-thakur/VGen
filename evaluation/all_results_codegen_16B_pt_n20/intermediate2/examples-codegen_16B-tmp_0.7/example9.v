// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
always @(posedge clk or posedge reset) begin
    if (reset == 0) begin
        q <= 1;
    end else if (q == 12) begin
        q <= 1;
    end else begin
        q <= q + 1;
    end
end

// counter that increments by 1 on each clock edge
// input clock, input reset, output counter
// output counter
always @(posedge clk or posedge reset) begin
    if (reset == 0) begin
        counter <= 0;
    end else begin
        counter <= counter + 1;
    end
end

// counter that increments by 2 on each clock edge
// input clock, input reset, output counter
// output counter
always @(posedge clk or posedge reset) begin
    if (reset == 0) begin
        counter2 <= 0;
    end else begin
        counterend
end
endmodule
