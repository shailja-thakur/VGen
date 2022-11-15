// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @(posedge clk)
begin
	if(reset)
	begin
	 out <= data;
	end
	else
	begin
	if(load)
	begin
	 out <= data;
	end
	else
	begin
	case(amount)
	0:
	begin
	 out <= out;
	end
	1:
	begin
	 out <= { data[6:0],data[7] };
	end
	2:
	begin
	 out <= { data[3:0],data[7:5],data[7] };
	end
	3:
	begin
	 out <= { data[2:0],data[7:4],data[7] };
	end
	endcase
	end
	end
	end
endmodule
