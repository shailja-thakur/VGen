// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// shift left and rotate the register out by amount bits
always @ (posedge clk or posedge reset)
if (reset)
	out <= 8'b0000_0000;
else if (load) begin
	case(amount)
	2'd0: out <= data;
	2'd1: out <= {data[0],data[7:1]};
	2'd2: out <= {data[1:0],data[7:2]};
	2'd3: out <= {data[2:0],data[7:3]};
	2'd4: out <= {data[3:0],data[7:4]};
	2'd5: out <= {data[4:0],data[7:5]};
	2'd6: out <= {data[5:0],data[7:6]};
	2'd7: out <= {data[6:0],data[7end
endmodule
