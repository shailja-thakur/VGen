// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(clk,reset,load)
begin
	if(reset==1'b1)
	begin
	out <= 8'h00;
	end
	else begin
	if(load==1'b1)
	begin
	out <= data;
	end
	else
	begin
	$display("same size");
	case (amount)
	3'b000:
	begin
	out <= data;
	end
	3'b001:
	begin
	out <= {data[7:1],data[7]};
	end
	3'b010:
	begin
	out <= {data[7],data[7:1]};
	end
	3'b011:
	begin
	out <= {data[7:1],data[0]};
	end
	3'b100:
	end
end
end
endmodule
