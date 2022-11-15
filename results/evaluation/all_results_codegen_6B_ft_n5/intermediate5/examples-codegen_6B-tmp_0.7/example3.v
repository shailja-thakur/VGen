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
	begin
	out<=0;
	end
	else if (load)
	begin
	out<=data;
	end
	else if (amount==3'd3) //as the key is 3 bits, we have to iterate 3 times to get the final output
	begin
	out<={out[5:0],out[6]};
	end
	else if (amount==3'd4)
	begin
	out<={out[4:0],out[5]};
	end
	else if (amount==3'd5)
	begin
	out<={out[3:0],out[4]};
	end
	else if (amount==3'd6)
	begin
	out<={out[2:0],out[3end
end
endmodule
