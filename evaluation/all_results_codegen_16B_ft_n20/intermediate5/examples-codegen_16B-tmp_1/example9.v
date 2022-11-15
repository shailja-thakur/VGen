// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always@(posedge clk, posedge reset)begin
	if (reset) begin
//	if reset is high, all is reset to zero
// if the reset is high that'll mean the function is being called
// first, so there's no need to load out with the next input
	out = 8'b0;
	end
	else begin
	case (load)
	1'b0: out = data; // out is loaded at the start of the circuit (what's in data?)
	1'b1: out = out << amount; // the other case
	endcase
	end
end
endmodule
