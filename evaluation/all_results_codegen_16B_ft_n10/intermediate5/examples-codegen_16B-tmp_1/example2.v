// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
//only items that are zero need not be shifted
always @(posedge clk, posedge reset)
begin
if(reset)
begin
out<= 8'b0;
end
else
begin
if(load)
out <=data;
else
begin
if ( amount>0 )
begin
out <= out << amount;
// add zeros when rotating towards 000
// set the LSB to 0
out[0] <= 1'b0;
end
else
begin
// same operation except the right most bits are rotating 
out <= out >> abs(amount);
// add the zeros when rotating towards 000
out[abs(amount)-1] <=1'b0;
end
end
end

end
endmodule
