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
    if (reset)
        out = 0;
    else
    {
        out = data;
        data = data << amount;
    }
    // data packed. the count is after the data
    out = out | load;// only one LSB of load determines the result
    data = data << 1;// increment data LSB
     
endmodule
