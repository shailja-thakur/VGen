// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @ (posedge clk)
begin : rotate_and_load
	begin
	out=data;
	end
	else if(amount <3) //rotation less than 3 bits
	begin
	out <= {data[7:amount],out[7:1]}; //shift right
	out <= out << amount;
	end
	else if(amount <6)//rotation more than 4 but less 6 bits
	begin	
	out <= out >> amount; //left shift
	out <= out << (6-amount); //extra shift for parity bits
	end
	else if(amount<9) //rotation more than 6 but less 9 bits
	begin
	out <= out >>amount; //left shift
	out <= out << (9-amount); //extra shift for parity bits	
	end
	else //how do we take care of all shift?end
endmodule
