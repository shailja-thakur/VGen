// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk,reset)begin
	if(reset)begin
	//reset statement: counter and out assignment statement.
	out <= 8'b00000000;
	end
	else begin
	if(load) begin
	// when load is high the assign out statement
	assign out = data;
	end
	else begin
	left_shift ls (clk,reset,amount,out);
	// rotate out in accordance to amount i.e rotate by 6 bits 9'b10011100 -> 9'b00011000
	// follow by left shifting by 6 so that output is 8'b00000110
	out = out << amount; 
	end
	end
end
endmodule
