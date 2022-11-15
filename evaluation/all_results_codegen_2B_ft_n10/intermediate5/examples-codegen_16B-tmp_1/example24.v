// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk, negedge reset)
begin
if(!reset) // active low reset
begin
	out <= 8'b00010101;
end
else
case(load)
	1'b1: // reading in data to shift
	begin
//Assigning data stored inside the variables
	out <= {out[6:0],data[7:1]}; 
	end
	default: // shifting conducted in the loop
	begin
	out <= {out[5:0],out[7:1]};
	end
endcase
if(load==1'b0 && reset == 1'b0)
begin // prevent extra left shift if reset or not active load from data
out <= out;
end
else if(load==1'b1 && reset == 1'b0)
begin // prevent extra left shift if reset or not activeendmodule
