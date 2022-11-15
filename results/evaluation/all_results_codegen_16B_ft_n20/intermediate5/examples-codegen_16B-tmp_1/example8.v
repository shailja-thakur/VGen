// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @ (posedge clk or posedge reset)
begin
if(reset) out <= 8'x00000000; // reset condition statement
else if(load == 1) out <= data ; // when high - load data to gate output
else begin // Otherwise condition (clock edge)
case(amount)
3'o04: out <= {data[7],data[7:1]};
3'o05: out <= {data[6],data[7],data[7:2]};
3'o06: out <= {data[5],data[7],data[7:2]};
3'o07: out <= {data[4],data[7],data[7:2]};
3'o08: out <= {data[3],data[7],data[7:2]};
3'o09: out <= {data[2],data[7],dataend
endmodule
