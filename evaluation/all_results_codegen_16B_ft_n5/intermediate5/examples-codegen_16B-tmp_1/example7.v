// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @(posedge clk,reset,load)
begin
	if (reset) begin 
 	 out<=0; 
 end
 
 
 else if (load) begin
 	 out <= data; 
 end
 
 //rotate left
 else begin 
	out <= (data<<amount) | out >> amount;
 end
end
endmodule
