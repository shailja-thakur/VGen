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
 out = 8'b0;
 if(load)
 out <= data;
 else if(amount>0)
 out = {data[7:amount],data[7:8]};
 else if(amount<0)
 out = {data[7:(2-amount)],data[7:8]};
end
endmodule
