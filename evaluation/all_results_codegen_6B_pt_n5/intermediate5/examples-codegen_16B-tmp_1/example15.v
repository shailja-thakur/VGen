// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
reg [7:0] name;
always@(posedge clk)
 if(reset) begin
	//out = 0;
	out <= 0;
 end
	else 
	 begin
	 if(load) begin
	 out <= data;
	 end
	 else begin
	 //out <=name;
	 out <= name << amount;
	 end
	end
// initial starting bits of the input data. 
initial begin
	out <= 0;
	//name <= 8'bplplplpl;
	name <= 8'b11111110;
	end

endmodule
