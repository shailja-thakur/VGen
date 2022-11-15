// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(not load) begin
    out <= data;
end
// when load is high, rotate the data register by amount bits
always@(load) begin
    // rotate the data register by amount bits
    data <= data >> amount;
    // left shift the data register by amount bits
    data <= data << amount;
    // assign the out register the data register
    out <= data;
end
endmodule
