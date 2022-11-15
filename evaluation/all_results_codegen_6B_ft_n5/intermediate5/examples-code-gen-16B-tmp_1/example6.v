// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// shift left and rotate the register out by amount bits
always @(posedge clk or posedge reset)
	begin
	if (reset)
	 out<=8'h0;
	else
	 begin
	 case(load)
	 1'b0:
	 begin
	 out[0] <= out[7];
	 out[1] <= out[7] ;
	 out[2] <= out[7] ;
	 out[3] <= out[7] ;
	 out[4] <= out[7] ;
	 out[5] <= out[7] ;
	 out[6] <= out[7] ;
	 out[7] <= out[7] ;
	 end
	 1'b1:
	 begin
	 out[7] <= out [8 - amount];
	 out[0] <= out[amount];
	 out[7] <= out [7];
	 outend
end
end
endmodule
