// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(load)
	begin:load
	if (load)
	out = data; 
	else 
	begin 
	//call the out shift operation 
	//the amount will be sent in bytes, 
	//cheer to see a octal integer e.g. 00011.
	//from the octal value you can do anything on your wishbone bus
	out = {out[6:0],out[7]};
	//carries is the counter for sending or loading
	//below lines are called from counter and are a parallel counter for different case
	//herein close brackets our ignoring lables at the top of the script 
	//postive or negative value for our code.
	//positive or negative sign is indeterminate and will be changed later 
	if (amount<0) // check if the send is negative incase of ovrflowend
end
endmodule
