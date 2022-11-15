// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
// when shift or rotate value is one, the function creates a 1 bit
// when rotate is 0, the shift is simply logical operation
always @( posedge clk, 
	reset, 
	load, 
	amount, 
	data ) 
	begin 
	if ( reset )
	out <= { 1'b1,8'b0 };
	else if ( load )	
	out <= data;
	else if ( amount !=0 ) 
	begin
	if ( amount == 1 )
	out <= out << 1;
	else out <= out << ( amount - 1 )
//case statement can also be used to manually control output with case
// always case(load) //Pick condition to case
// [7:0]out; 
// default //append all instructions defaut takes default value 0 
	endcase
	end //end of anlayend
endmodule
