// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk, negedge reset)
begin
	if (reset == 0)
	begin
	// reset condition
	// reset all the apporpriate registers
	out <= 0;
	end
	else
	begin
	if (~load) // not loading,out is routed to rotation and left shift
	begin
	out <= {data[6:0],data[7]};
	end
	else
	begin
	if (amount > 0) // rotate left
	begin
	out <= {data[0] , data[7:1]};
	end
	else if (amount < 0) // rotate right
	begin
	out <= {data[0], data[7:1], data[7:2]};
	end
	else // amount == 0
	begin
	out <= data;
	end
	end //end
end
end
endmodule
