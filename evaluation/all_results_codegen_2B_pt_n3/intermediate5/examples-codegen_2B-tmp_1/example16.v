// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
wire [7:0] data_left_load;
wire [7:0] data_right_load;
wire clk_clock_update;
wire clk_load;
wire clk_wdata;
wire reserved;

assign out = (load   &&  (load == 0) &&  amount <= 12); // corner case
assign data_left_load = (load  &&  (load == 0) &&  amount >= 0) ? data << amount : data;
assign data_right_load = (load  &&  (load == 1) &&  amount >= 0) ? data >> amount : data;
assign clk_clock_update = (load  &&  (load == 1)) ? clk : Clk_RESET;  // to avoid clk rhs, need to keep track of clk load
assign clk_load = (load  endmodule
