// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @(posedge clk) begin
	if(reset) begin
	out=0;
	end
	if(load==1'b1) begin
	out=data;
	end
	else begin
	case(amount)
	3'd0: out=out;
	3'd1: out={out[6:0],out[7]};
	3'd2: out={out[5:0],out[7:6]};
	3'd3: out={out[4:0],out[7:6]};
	3'd4: out={out[3:0],out[7:6]};
	3'd5: out={out[2:0],out[7:6]};
	3'd6: out={out[1:0],out[7:6]};
	3'd7: out={out[end
end
endmodule
