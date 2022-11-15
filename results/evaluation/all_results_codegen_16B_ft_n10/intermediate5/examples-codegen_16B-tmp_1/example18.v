// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @ (posedge clk, posedge reset) begin
 case(reset)
	1'b0:begin
	out<=8'b0;
	end
	1'b1: begin
	if(load)
	out<=data;
	else begin
	// add 3 because of pipeline delay
	case(amount)
	3'd0:out<=data;
	3'd1:out<=data<<1;
	3'd2:out<=data<<2;
	3'd3:out<=data<<3;
	3'd4:out<=data<<4;
	3'd5:out<=data<<5;
	3'd6:out<=data<<6;
	3'd7:out<=data<<7;
	endcase
	end
	end
 endcase
 end
endmodule
