// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [7:0] temp;
always @(posedge clk or posedge reset)
	begin
	if(reset)
	out<=0;
	else if(load)
	temp<=data;
	else begin
	case(amount)
	3'b000: out<=temp;
	3'b001: out<={temp[0],temp[7:1]};
	3'b010: out<={temp[1:0],temp[7:2]};
	3'b011: out<={temp[2:0],temp[7:3]};
	3'b100: out<={temp[3:0],temp[7:4]};
	3'b101: out<={temp[4:0],temp[7:5]};
	3'b110: out<={temp[5:end
end
endmodule
