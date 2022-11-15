// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
always @(posedge clk,posedge reset)
begin
	if (reset==1)
	begin
	out <= 8'b0;
	end
	else if (load==1)
	begin
	out <= data;
	end
	else
	begin
	case (amount)
	3'b000: out <= {data[7],data[6],data[5],data[4],data[3],data[2],data[1],data[0]};
	3'b001: out <= {data[7],data[6],data[5],data[4],data[3],data[2],data[1],data[0]};
	3'b010: out <= {data[7],data[6],data[5],data[4],data[3],data[2],data[1],data[0]};
end
end
endmodule
