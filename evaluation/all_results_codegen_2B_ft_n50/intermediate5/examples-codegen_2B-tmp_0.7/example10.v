// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @ (posedge clk)
begin
if (reset==1)
out <= 0;
else begin
if (load == 1) begin
out <= data;
end
else begin
case(amount)
3'b0000: out <= {data[0],data[7:1]};
3'b0001: out <= {data[1],data[7:2]};
3'b0010: out <= {data[2],data[7:3]};
3'b0011: out <= {data[3],data[7:4]};
3'b0100: out <= {data[4],data[7:5]};
3'b0101: out <= {data[5],data[7:6]};
3'b0110: out <= {data[6],data[7]};
3'b0111: out <= {dataend
end
end
endmodule
