// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
assign load_clk = clk;
assign out = ~data;
assign load_out = ~load;
// when clk is high, load the next data register
assign load_clk_next = (clk == 1'b1);
assign load_out_next = ~load_clk_next;
always @ (posedge clk)
begin
    if (amount == 0) {
        out = data;
        load = load_out;
    } else if (amount == 1) {
        out = out << 1;
        out = out | load_out;
        load = load_out;
    } else if (amount == 2) {
        out = out << 2;
        out = out | load_out;
        load = load_out;
    } else if (amount == 3) {
        out =end
endmodule
