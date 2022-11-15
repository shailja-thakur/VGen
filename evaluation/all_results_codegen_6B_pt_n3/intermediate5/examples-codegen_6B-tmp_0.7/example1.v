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
    case amount:
        if (load == 1) out <= data;
        else out <<= 8;
        out <<= 1;
        if (clk == 1) out <= load;
        else out <<= 1;
        out <<= 1;
        out <<= 1;
        out <<= 1;
        out <<= 1;
        out <<= 1;
        out <<= 1;
        out <<= 1;
        out <<= 1;
        out <<= 1;
        out <<= 1;
        out <<= 1;
        out <<= 1;
        out <<= 1;
        out <<= 1;
        out <<= 1;
        out <<= 1;
        out <<= 1;
        out <<= 1;
        out <<= 1;
        out <<end
endmodule
