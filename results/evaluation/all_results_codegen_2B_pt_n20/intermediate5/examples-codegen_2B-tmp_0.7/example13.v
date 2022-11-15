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
        out = (data << amount);
        if (out == 0)
        {
            out = 0x80;
            // if the left shift operation has overflowed,
            // set the carry bit to 1 in the output register
        }
        else
        {
            out = out >> amount;
        }
    }
end
// left shift and rotate operation end
endmodule
