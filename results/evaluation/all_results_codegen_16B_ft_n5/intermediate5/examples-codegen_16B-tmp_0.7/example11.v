// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always@(posedge clk,posedge reset)
begin
	if(reset)
	begin
	// initial state
	out=8'b0;
	end
	else if(load)
	begin
	out=data;// input is stored in output
	end
	else
	begin
	//rotate
	//rotation amount is in the 3 least sig bits
	//shift to the left is determined from the 2 most sig bits
	//00 => left shift
	//01 => nothing
	//10 => right shift
	//11 => load data input to output

	//rotation amount
	case (amount)
	3'b000: out = {out[6:0],out[7]};
	3'b001: out = {out[5:0],out[7]};
	3'b010: out = {out[end
end
endmodule
