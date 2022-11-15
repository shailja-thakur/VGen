// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always@(posedge clk,posedge reset)
begin
if(reset)
out <= 8'b00000000;
else if(load)
out <= data;
else
case(amount)
3'b000: out <= {1'b0,out[7:1]};
3'b001: out <= {out[6:0],1'b0};
3'b010: out <= {1'b0,out[7:1]};
3'b011: out <= {out[6:0],1'b0};
3'b100: out <= {1'b0,out[7:1]};
3'b101: out <= {out[6:0],1'b0};
3'b110: out <= {1'b0,out[7:1]};
3'b111: out <= {out[end
endmodule
