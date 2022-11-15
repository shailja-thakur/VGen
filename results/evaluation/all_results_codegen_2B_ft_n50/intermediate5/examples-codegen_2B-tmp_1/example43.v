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
case (amount)
0: out <= data;
1: out[0] <= data[7];
2: out[1:7] <= data[6:0];
3: out[2:7] <= data[5:0];
4: out[3:7] <= data[4:0];
5: out[4:7] <= data[3:0];
6: out[5:7] <= data[2:0];
7: out <= data;
endcase
if (load)
out <= data;
else if (amount !=0)
out[7:1] <= out[6:0];
end
endmodule
