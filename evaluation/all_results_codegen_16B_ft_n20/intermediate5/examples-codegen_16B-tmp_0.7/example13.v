// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @ (posedge clk)
begin
if(reset)
out <= data;
else if(load)
out <= out;
else
begin 
case(amount)
3'b000:
out <= out;
3'b001:
out <= {data[0],data[7:1]};
3'b010:
out <= {data[1:0],data[7:2]};
3'b011:
out <= {data[2:0],data[7:3]};
3'b100:
out <= {data[3:0],data[7:4]};
3'b101:
out <= {data[4:0],data[7:5]};
3'b110:
out <= {data[5:0],data[7:6]};
3'b111:
out <= {data[end
end
endmodule
