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
if (reset == 1)
out <= 8'b0000_0000;
else begin
if (load == 1)
out <= data;
else begin
case (amount)
3'b000: out <= {1'b0,data[7:1]};
3'b001: out <= {data[7],data[6:0]};
3'b010: out <= {data[6],data[5:0]};
3'b011: out <= {data[5],data[4:0]};
3'b100: out <= {data[4],data[3:0]};
3'b101: out <= {data[3],data[2:0]};
3'b110: out <= {data[2],data[1:0]};
3'b111: out <= {end
end
end
endmodule
