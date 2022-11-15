// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk)
begin
    if (load == 1)
    {
        out = data;
    }
    else
    {
        // rotate the out register
        out = (out << amount) | (out >> (32 - amount));
        // left shift the out register by amount bits
        out = (out << amount) | (out >> (32 - amount));
    }
end
endmodule
