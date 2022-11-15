// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
always @(posedge clk, posedge reset) begin
if(reset==1)
out<=8'b0;
else 
case(amount)
0:
out<=data;
1:
out<=data<<1;
2:
out<=data<<2;
3:
out<=data<<3;
4:
out<=data<<4;
5:
out<=data<<5;
6:
out<=data<<6;
7:
out<=data<<7;
endcase
end
endmodule
