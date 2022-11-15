// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or posedge reset)
begin
if(reset)
	out<=0;
else
	begin
	if (load==1'b1)
	out<=data;
	else 
	begin
	if(amount==3'b110)
	out<=out;
	else if(amount==3'b101||amount==3'b100)
	out<={out[5:0],out[6]};
	else if(amount==3'b011||amount==3'b010)
	out<={out[4:0],out[5],out[6]};
	else if(amount==3'b001||amount==3'b000)
	out<={out[3:0],out[4],out[5],out[6]};
	end
	end
end
endmodule
