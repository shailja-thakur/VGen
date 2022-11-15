// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits

always @(posedge clk or posedge reset)
	if (reset)
	begin
	out <= 8'b11111111;
	end
	else if (load)
	begin
	out <= data;
	end
	else begin
	case(amount)
	3'd1: out = out >> 1;	// shift right
	3'd2: out = out >> 2;	// shift right
	3'd3: out = out >> 3;	// shift right
	3'd4: out = out >> 4;	// shift right
	3'd5: out = out >> 5;	// shift right
	3'd6: out = out >> 6;	// shift right
	3'd7: out = out >> 7;	// shift right
	endcase
	end
endmodule
