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
always @(posedge clk) begin
if (~reset) begin #5 q <= 4'b0;
else if(q == 12) begin #5 q <= 4'b0;
else begin #5 q <= q + 4'b1;
end
end 
end
end
endmodule
