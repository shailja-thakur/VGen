// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
assign load_high = (load == 1);
assign out = (load_high?&data:&out);
assign out_load = (load_high?&out:&data);
assign out_shift = (load_high?&data:&data);
assign out_shift_out = (load_high?&out:&out);
// when load is low, load the data register with the loaded data
if (load == 1) {
    assign out_load_data = (out_load == &data);
    assign out_load_load = (out_load_data?&data:&out_load);
    assign out_load_data_data = (out_load_data?&out_load:&data);
    assign out_load_load_data = (out_load_data?&out_load:endmodule
