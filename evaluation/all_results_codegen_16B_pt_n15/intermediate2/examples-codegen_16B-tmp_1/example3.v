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
wire [3:0] qahead; 
always @(posedge clk) #1 begin
    qahead <= q; 
    if (reset) begin
        q <= 1;
    end else...
    if (qahead[3] == 1) begin
        q <= 0;    // assign q to 0
    end else...
    q <= q + 1;  // move one step forward
end
assign q = qahead;
endmodule
