// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @ (posedge clk)
begin : SHIFT
	// shift and rotate using case statement
	case(amount)
	3'b111: begin
	// maximum rotation angle, gets 0 shifted
	out = data;
	end
	3'b110: begin
	out = {data[0], data[7:1]};
	end
	3'b101: begin
	out = {data[1:0],data[7:2]};
	end
	3'b100: begin
	out = {data[2:0],data[7:3]};
	end
	3'b011: begin
	out = {data[3:0],data[7:4]};
	end
	3'b010: begin
	out = {data[4:0],data[7:5]};
	end
	end
endmodule
