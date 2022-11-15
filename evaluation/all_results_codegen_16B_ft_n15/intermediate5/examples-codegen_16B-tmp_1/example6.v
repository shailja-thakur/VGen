// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
// direction is calculated based on amount
// shift logic is selcted based on direction
always @(posedge clk, posedge reset)
begin
 if(reset)
 begin
 out <= 0;
 end
 else
 begin
 case(amount)
 3'b000:
 begin
 data <= {(data[1]|load),(data[0]|load),(out[0]|load)};
 direction <= 1;
 shift <= 3'b000;
 end
 3'b001:
 begin
 data <= {data[0],(data[7]|load),(data[6]|load),(data[5]|load)};
 direction <= 1;
 shift <= 3'b110;
 end
 3'b010:
 begin
 data <= {(data[2]|load),(data[1]|load),data[0]};
 directionend
end
end
endmodule
