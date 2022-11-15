// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(posedge clk)
begin
	if(reset)
	begin
	// resetting the register
	out=0;
	end
	else if(load)
	begin
	// when load is high, load data to out
	out=data;
	end
	else
	begin
	// else rotate the register and left shift
	out=({data[0],data[7:1]});
	if(amount > 2)
	begin
	// greater than 2, then do the rotate and left shift in one loop
	// to prevent generating excess stressed value in internal registers
	out=~out;
	end
	if((amount > 2) && (amount <7 )) begin
	// width less than 8, so add while loop and a generate
	// capped at 4 bit addition.
	while(amount <5 )
	begin
	outend
end
end
end
endmodule
