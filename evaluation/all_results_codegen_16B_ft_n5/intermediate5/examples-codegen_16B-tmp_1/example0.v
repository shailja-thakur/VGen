// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @( posedge clk, negedge reset )
	if(!reset)	begin	// when reset is low, all the	operations stop.
	out<= 0;	end
	else begin 
	case ({load})
	0: out <= out;
	1: begin 
	case(amount)
	0: out <= out;
	1: out <= {data[7:1],data[0]};
	2: out <= {data[7:2],data[1:0],data[7:3]};
	3: out <= {data[7:3],data[2:0],data[7:4]};
	4: out <= {data[7:4],data[3:0],data[7:5]};
	5: out <= {data[7:5],data[4:0],dataend
endmodule
