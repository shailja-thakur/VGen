// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
wire [7:0] load_data;
initial begin
    load_data = load;
    load_data = data << amount;
    out = load_data >> amount;
    out = out >> amount;
    load = load & 1'b1;
end
endmodule
