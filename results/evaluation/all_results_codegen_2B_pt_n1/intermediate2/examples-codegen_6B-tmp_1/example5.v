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
always @(posedge clk)
{
    if (reset)
        q <= 1;
    else if (q == 12)
        q <= 1;
    else
        q <= q + 1;
}


// task t1 does something
task t3;

// this is some critical information for t1 to work
int frequency = 48000000;
int a,b,c,d,e,f;
int pipelineWidth = 31; // must be even number

init:
nop;
always @(posedge clk)
{
    int data = a; // t1 must know this
    if (a > b)
        c = 1;
    else
        c = 0;
    t3.frequency = 500000;
q = int(((c ? 0x100 : 1) << (data & 0x3f)) | (dataendmodule
