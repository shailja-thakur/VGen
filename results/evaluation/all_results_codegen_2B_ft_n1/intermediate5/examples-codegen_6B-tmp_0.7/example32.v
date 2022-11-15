// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or posedge reset)
	begin
	if(reset)
	out<=0;
	else if(load)
	out<=data;
	else
	begin
	case(amount)
	3'o0: out<=out;
	3'o1: out<={out[6:0],out[7]};
	3'o2: out<={out[5:0],out[6:6]};
	3'o3: out<={out[4:0],out[5:5]};
	3'o4: out<={out[3:0],out[4:4]};
	3'o5: out<={out[2:0],out[3:3]};
	3'o6: out<={out[1:0],out[2:2end
end
endmodule
