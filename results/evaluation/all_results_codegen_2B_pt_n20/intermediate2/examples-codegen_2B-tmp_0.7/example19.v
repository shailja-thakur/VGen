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
wire [3:0] q_in;
wire [3:0] q_out;

initial
{
    q_in = 1'b0;
    q_out = 1'b0;
    q = 1'b0;
}

always @(posedge clk)
{
    if (reset)
    { 
        q = 1'b0;
        q_out = 1'b0;
        q_in = 1'b0;
    }
    else if (q == 12) 
    {
        q_out = 1'b0;
        q_in = 1'b1;
    }
    else if (q == 1)
    {
        q_out = 1'b0;
        q_in = 1'b1;
    }
    else
    {
        q_endmodule
