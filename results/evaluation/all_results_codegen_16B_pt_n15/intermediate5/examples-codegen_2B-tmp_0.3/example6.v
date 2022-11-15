// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
always @(posedge clk or posedge reset)
begin
if(reset)
out <= 0;
else if(load)
out <= data;
else if(amount == 3'b000)
out <= {1'b0,data[7:1]};
else if(amount == 3'b001)
out <= {data[6:0],1'b0};
else if(amount == 3'b010)
out <= {1'b0,data[7:1]};
else if(amount == 3'b011)
out <= {data[6:0],1'b0};
else if(amount == 3'b100)
out <= {1'b0,data[7:1]};
else if(amount == 3'b101)
out <= {data[6:0],1'b0};
else if(amount ==end
endmodule
