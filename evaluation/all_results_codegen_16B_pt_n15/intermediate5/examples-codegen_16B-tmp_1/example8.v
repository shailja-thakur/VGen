// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
void startup()
{
	if(!load)
	{
		out = data;
        out <<= amount;
        out |= out >> (8*sizeof(out[0]) - amount);
    }
}
// tick function implemented using this module
{
    startup();
}

















// left turn on chip
smart chip;
//sysCtl module
scl k_mode,sclk_in,b_mode,rst;
//nor module
nor chiplatchedD=a,chiplatchedE=b,chiplatchedT=START;
assert(a and b and START);
//1111111111
@(^$) //just a module which waits until CARRY is set
//80000000
@(b) //a module forwarding any OUT_CARRY value to a latch
reg a=0;endmodule
