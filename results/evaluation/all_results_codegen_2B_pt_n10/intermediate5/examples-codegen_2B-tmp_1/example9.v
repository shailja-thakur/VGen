// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
wire current_data;
wire next_data;
always @* start of any_data <= load;
always @* [8:0] start of any_data <= pin_count(data);
always @* [9:0] start of any_data <= clk;
always @* [9:0] start of any_data <= out;
always @* [10:0] start of any_data <= [8:0] Rotate register;
always @* [11:0] start of any_data <= [7:0] Shift register;
ugly
 always @* [12:11] start of any_data <= amount;
always @* [11:10] start of any_data <= amount;
always @* [8:7] start of any_data <= data;
always @* [6:6] start of any_data <= carry;
// weendmodule
