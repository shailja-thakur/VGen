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
    if (reset) q <= 1;
    else if (q == 12) q <= 1;
    else q <= q + 1;
end


// Example 2: Multiple register reads and writes
// This example shows how to read and write multiple registers with a single
// clock cycle. `readRegs` reads four registers (`q[1:0]` and `q[3:2]`), writes
// the results to a third register (`q[2]`), and then immediately reads them
// back.
int main( void )
{
    int i;

    counter c;
    readRegs( c.q[1:0], c.q[3:2] );
    c.q[2] = c.q[1] + c.q[3];
    writeRegs(endmodule
