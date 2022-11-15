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
	if (~reset)
	// reset
	
	out <= 0; 
	
	else if (load)
	// if load also high...
	
	out <= data;
	
	else if (amount == 3'b0)
	// no shift/rotate
	out <= out;
	
	else if (amount == 3'b001)
	begin
	// rotation is 1
	out <= {entries[0],entries[1],entries[2],entries[3],entries[4],entries[5],entries[6],entries[7],entries[8],entries[9],entries[10],entries[11],entries[12],entries[13],entries[14],entries[15],entries[16],end
end
endmodule
