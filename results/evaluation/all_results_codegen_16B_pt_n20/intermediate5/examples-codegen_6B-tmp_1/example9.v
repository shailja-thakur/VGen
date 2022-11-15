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
 if(reset)
	begin
	out<=0;
	end
else if(!load) begin
	//copying data to temp
	temp=out;
	for(i=0;i<amount;i=i+1)
	begin
	out<={temp[6:0],data[7]};
	//rotate the register to s'.out
	temp=out;
	end
end
endmodule
