// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @(posedge clk,posedge reset) begin
if(reset)
out=0;
else if(load)
out=data;
else begin
case(amount)
3'b000: out=out;
3'b001: out={out[6:0],out[7]};
3'b010: out={out[5:0],out[7:6]};
3'b011: begin
h=out[6];
out=out<<1'b1;
out[7:6]=h;
end
3'b100: begin
h=out[0];
out=out>>1'b1;
out[7:0]=h;
end
3'b101: begin
h=out[7];
out={h,out[7:1]};
end
3'b110:out=out<<end
end
endmodule
