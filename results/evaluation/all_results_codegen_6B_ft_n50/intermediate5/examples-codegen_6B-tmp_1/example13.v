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
if(reset==0)
	begin 
	next_out<=8'b000000;
	end
else 
	begin 
	if (load==1)
	begin
	next_out<=data;
	end
	else if(amount==1||amount==2||amount==4||amount==5||amount==6||amount==7||amount==9||amount==10)
	begin 
	tmp=next_out;
	next_out=tmp<<1;
	next_out[0]=tmp[7];
	end
	else if(amount==3||amount==8||amount==11)
	begin
	tmp=next_out;
	next_out=tmp<<1;
	next_out[0]=tmp[7];
	next_outend
end
end
endmodule
