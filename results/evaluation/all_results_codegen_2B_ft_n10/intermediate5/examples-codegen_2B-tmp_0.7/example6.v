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
begin
if(reset == 1'b0)
out <= 8'b00000000;
else 
case(amount)
3'b000:
out <= data;
3'b001:
out <= {1'b0,data[7:1]};
3'b010:
out <= {1'b0,data[6:1]};
3'b011:
out <= {1'b0,data[5:1]};
3'b100:
out <= {1'b0,data[4:1]};
3'b101:
out <= {1'b0,data[3:1]};
3'b110:
out <= {1'b0,data[2:1]};
3'b111:
out <= {1'b0,dataend
endmodule
