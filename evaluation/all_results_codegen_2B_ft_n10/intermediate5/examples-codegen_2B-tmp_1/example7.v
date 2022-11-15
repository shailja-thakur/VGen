// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk, posedge reset)
begin
	if (reset)
	begin
	out <= 8'b0000_0000;
	end
	else if (load)
	out <= data;
	else begin
	case (amount)
	0: out <= {8'd0, data[7:0]};
	1: out <= {1'd0, data[7]};
	2: out <= {2'd0, data[7:1]};
	3: out <= {3'd0, data[6:2]};
	4: out <= {4'd0, data[5:3]};
	5: out <= {5'd0, data[4:4]};
	6: out <= {6'd0, data[3:5]};
	7: out <= {7'd0, data[2:6end
end
endmodule
