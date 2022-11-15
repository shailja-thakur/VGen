// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// shift left and rotate the register out by amount bits
always@(posedge clk, posedge reset) //store load and rotate in registers
begin
	if(reset)	
	begin
// trigger initialization of registers
	out <= data;
	end
	else
	begin
//when load is high, load data to out
	if(load)	
	begin
// shift left with self only make sense if the left shift type of command is also accessing register
// in the register, when is selected, see def ie when selected, this shifts in data only when high at posedge
// when is not selected, this does nothing.
// the & with X is similar to a 2:1 mux, with 0 output, 1 & 2 outputs 1 out of 1, 0-data and data
	out <= out << 'd1;
// rotate right, this time the & operator is with stuff passed in from outside the rotate operation ie d2,
end
end
end
endmodule
