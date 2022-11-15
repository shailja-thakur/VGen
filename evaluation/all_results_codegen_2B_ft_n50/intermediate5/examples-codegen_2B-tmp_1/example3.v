// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
// of rotate has to be done before nextrotate signalh is high
always@ (posedge clk) begin
 
if (~reset) begin
out <= 8'b00000000;
end
// if not reset && set data -> set data to out
else if (load) begin 
	out <= data;
	end
else begin
	case (amount) 
 2: out <= {out[0], out[1], out[3], out[5], out[6], out[7], out[2], out[4], out[8], out[10]};
 3: out <= {out[1], out[3], out[5], out[6], out[7], out[8], out[0], out[2], out[4], out[10]};
 4: out <= {out[2], out[4], out[6], out[7], outend
end
endmodule
