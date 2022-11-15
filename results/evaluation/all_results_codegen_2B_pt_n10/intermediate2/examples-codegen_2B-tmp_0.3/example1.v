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
initial begin
    counter.q <= 1;
    if (reset) begin
        counter.q <= 12;
    end else begin
        if (counter.q == 12) begin
            counter.q <= 1;
        end else begin
            counter.q <= (counter.q + 1);
        end
    end
end

// This is a counter that counts from 1 to 12
module counter2( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
initial begin
    counter2.q <= 1;
    if (reset) begin
        counter2.q <= 12;
    end else begin
        end
end
endmodule
