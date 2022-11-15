// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
always @(posedge clk)
begin
case(amount)
0: out <= data;
1: out <= {1'b0,data[7:1]};
2: out <= {data[6:0],1'b0};
3: out <= {data[7],data[6:1]};
4: out <= {data[7:1],data[6],1'b0};
5: out <= {data[7:2],1'b0};
6: out <= {data[7:3],1'b0};
7: out <= {data[7:4],1'b0};
8: out <= {data[7:5],1'b0};
9: out <= {data[7:6],data[5],1'b0};
10: out <= {data[7:7],data[6],end
endmodule
