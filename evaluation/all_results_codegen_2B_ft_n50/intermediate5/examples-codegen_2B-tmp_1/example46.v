// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(posedge clk or posedge reset)
begin
if(reset) 
	out<=0; 
else if(load)
	out<=data;
else
	begin
	case (amount)
	3'b000: out <= out;
	3'b001: out<= {2'b00, data[1:0]};
	3'b010: out<= {1'b0, data[7:2}};
	3'b011: out <= {1'b0, data[7:8]};
	3'b100: out <= {1'b0,data[7:4]};
	3'b101: out <= {data[5], data[7:7]};
	3'b110: out <= {data[3], data[7:7]};
	3'bend
end
endmodule
