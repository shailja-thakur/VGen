// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
integer i,counter;
always @(posedge clk, posedge reset)
begin
if(reset)
out<=0;
else if(load)
out<=data;
// rotate the number (left shift)
else begin
out<=#1 {out[7],out};
//reset the counter when done
if(out)
counter <=0;
else
counter <=counter+1;
end
end
endmodule
