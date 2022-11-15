// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(*)
begin
if(load)
	out <= data;
else
	begin
	case(amount)
	3'b000: out <= {data{1'b0}};
	3'b001: out <= {data{1'b1}};
	3'b100: out <= {data{1'b0}};
	3'b101: out <= {data} >> 1'b1;
	3'b110: out <= {data} >> 2'b1;
	3'b111: out <= {data} >> 3'b1;
	default: out <= 8'bxxxxxxxx;
	endcase
	end
end
endmodule
