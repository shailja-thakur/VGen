// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @* load
wire r0;
always @* out = r0 << amount if ((load) && !(r0));
always @* out
    = rdata[0] << amount if (amount == r0);
always @* out
    = rdata[1] << amount if (amount > r0);
always @* out
    = r0 << amount if (amount > r0);
always @* out >> [1:0] amt
    = r0 >> [1:0] amount;
always @* out >> [3:2] amt
    = r0 >> [3:2] amount;
always @* out >> [5:4] amt
    = r0 >> [5:4] amount;
always @* out >> [7:6] amt
    = r0 >> [7:6] amount;
always @*endmodule
