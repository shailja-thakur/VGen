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
    case(q)
        case(reset) begin q <= 1; end
        case(q == 12) begin q <= 1; end
        default begin q <= q + 1; end
    endcase
end

// this is the array that will be used to drive the counter
reg [3:0] counter_array [3:0];
// this is the output signal
output reg [3:0] q;

// this is the block that will drive the counter
counter_array <= {counter_array[3], counter_array[2], counter_array[1], counter_array[0]};

// this is the counter block
always @(posedge clk) begin
    q <= counter_array;
end
endmodule
