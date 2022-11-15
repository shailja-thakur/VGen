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
	begin
	if (reset == 1'b1)
	out <= 8'b00000000;
	else if (load == 1'b1)
	out <= data;
	else begin
	
	case(amount)
	3'b000: out <= out; // No operation
	3'b001: out <= {out[6:0],out[7]}; // Right shift
	3'b010: out <= {out[5:0],out[6]}; // Left shift
	3'b011: out <= {out[4:0],out[5]}; // Both shift
	3'b100: out <= {out[3:0],out[4]}; // Reverse order
	endcase
	end
	end
endmodule
