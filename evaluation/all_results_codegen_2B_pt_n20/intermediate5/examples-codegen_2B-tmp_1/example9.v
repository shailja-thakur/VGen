// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(assert reset or out == 0 or in_state == 1 and (clk or reset)) begin
    out(anchor) = ((in_state == 1 & (clk or reset && assert reset))?data:reg(anchor) << amount) | (out);
    out(anchor) >>= register(anchor);
  end
always @(clk or reset) begin
    in_state = ~in_state & ((clk == 1L) & (~out == data) & (~amount == 0));
    out_state = out_state | ~(in_state & ((clk == 0) & (~amount == 0)));
end
endmodule
