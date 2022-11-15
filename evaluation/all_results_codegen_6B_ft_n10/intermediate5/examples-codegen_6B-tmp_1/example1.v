// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk)
	if (load) out <= data;
	else begin
	if (amount == 3'b111)
	out <= out;
	else if (amount == 3'b100)
	begin
	out <= {out[6:0],out[7]};
	end
	else if (amount == 3'b011)
	begin 
	out <= {out[5:0],out[6]};
	end
	else if (amount == 3'b010)
	begin 
	out <= {out[4:0],out[5]};
	end
	else if (amount == 3'b001)
	begin 
	out <= {out[3:0],out[4]};
	end
end
	end
endmodule
