// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
if (load) begin
    if (data == OUT_RANGE) begin
        out = {4'b1111_1111_1111,5'b1111_1111_1111};
        #branch out
    end else begin
        out = data;
    end
end
// left shift and rotate
always begin
    out = (data<<amount) | (out>>(32-amount));
end
endmodule
