// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @ (posedge clk or negedge reset)
begin
	if(!reset)
	begin
	out	<= 8'h00;
	end
	// rotate or shift the data as needed
	else if(load)
	// rotate by amount
	begin
	out	<= {data[7:amount], data[7:8]};
	end
	else
	// shift left by amount
	begin
	out	<= {data[7:1], data[7:1], data[7:1], data[7:1], data[7:1], data[7:1], data[7:1], data[7:1]};
	end
end
endmodule
