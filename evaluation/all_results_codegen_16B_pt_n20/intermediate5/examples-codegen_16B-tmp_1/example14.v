// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
if(load==1)
{
out=data;
}
else
{
#pragma HLS ARRAY_PARTITION variable=out block factor=16
o:=out[47:0];
o=o<<amount;
o=o|out[15:8];
out=o;
}
endmodule
