// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [1:0] shift_amount;
reg [1:0] rotate_out;
reg mask;

always #0 begin
    .nr_//left_shift_count = 65
    shift_amount = amount[//left_shift_count:0];
    rotate_out = 0;
    mask = (bit << shift_amount) |
           ((right_rotate(// 1'b1, data[7:0], 
           right_rotate(// 1'b1, data[15:8], 
           right_rotate(// 1'b1, data[23:16], 
           right_rotate(// 1'b1, data[31:24], 
           right_rotate(// 1'b1, data[39:32], 
           right_rotate(// 1'b1, data[47:end
endmodule
