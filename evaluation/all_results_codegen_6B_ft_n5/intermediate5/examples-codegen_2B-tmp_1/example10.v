// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk)
  if (load)
    out = data;
  else
    asm (
    // hard to go over the left shift and rotate if 0 bits is really cheap
    // load is guaranteed to be high above MLMOSI
    //      mov r14, 1'b0
    //      mov r15, r14
    //      bl r1
    //      bl r3
    //  bit r1, d2 <---- since r14 == reason for val is 0 to load
    //  bit r3, d3 <---- stay low temporarily !!
    //      mov r14, 0b10000000
    //      mov r15, r14
    //      bl r1
    //      bl r3
    //  bit r1, d2 <---- now set to r14 == begin at data[0]
    endmodule
