// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or posedge reset) begin
	if(load) begin
		out <= data;
		case(amount)
			0:out<=data;
			1:out<=data(23,8);
			2:out<=data(15,8);
			3:out<=data(7,8);
			4:out<=data(15,8);
			5:out<=data(7,8);
			6:out<=data(23,8);
			7:out<=data(31,8);
			case(64+amount)
				0:out<=data;
				1:out<=data(23,8);
				2:out<=data(15,8);
				3:out<=data(7,8);
				4:out<=data(15,8end
end
endmodule
