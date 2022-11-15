// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or negedge reset)
case (amount)
0: out <= data;
1: out <= {data[0],data[7:1]};
2: out <= {data[1],data[7:2]};
3: out <= {data[2],data[7:3]};
4: out <= {data[3],data[7:4]};
5: out <= {data[4],data[7:5]};
6: out <= {data[5],data[7:6]};
7: out <= {data[6],data[7]};
endcase
always @ (posedge load or negedge reset)
if (!reset) out = 8'b0;
else 
begin 
case(amount)
0: 
out = {out[6:0],out[7]};endmodule
