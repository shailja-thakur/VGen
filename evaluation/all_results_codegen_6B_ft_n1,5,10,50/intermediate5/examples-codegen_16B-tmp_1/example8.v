// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always@(posedge clk,posedge reset)
begin
	if(reset)
	 begin	
	case(load)
	1'b0: begin	out=8'b0;end
	1'b1: begin
	out={data[0],data[7:1]};
	case(amount)
	3'd0: begin
	out={out[1:0],out[7:2]};
	endcase
	3'd1: begin
	out={out[2:0],out[7:3]};
	endcase
	3'd2: begin
	out={out[3:0],out[7:4]};
	endcase
	3'd3: begin
	out={out[4:0],out[7:5]};
	endcase
	3'd4: begin
	out={outend
end
end
end
endmodule
