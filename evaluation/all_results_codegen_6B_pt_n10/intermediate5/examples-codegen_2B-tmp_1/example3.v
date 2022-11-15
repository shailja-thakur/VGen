// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
always@(posedge clk) 
begin
if(reset) 
out <= 8'd0;
else if(load) begin
out <= data;
end
else if(amount != 0) begin
out <={data[6:0],data[15:7]};
out <= out << (7 - amount);
end
end
endmodule
