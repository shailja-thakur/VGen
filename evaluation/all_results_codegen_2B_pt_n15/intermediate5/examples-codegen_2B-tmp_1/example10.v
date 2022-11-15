// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(line clk or reset) begin
    if (load > 0) begin
        out = data;
        size_t t1 = (out[7-amount+0] << shift(amount-0,7));// the pattern
        size_t t2 = (out[0] << shift(amount-0,8));// bit pattern
        out = left_shift(7,t1+t2);// left shift and repetition
        out[0] = out[7-amount];// visible bits are in upper part of out register
        out[7-amount] = amount;// visible bits are in lower part of out register
    end else begin
        size_t tmp = ((out[0] << shift(amount-0,8))-(out[0]+ out[7-amount+0]) + out4);// bit pattern
        size_t r0 = tmp >>end
end
endmodule
