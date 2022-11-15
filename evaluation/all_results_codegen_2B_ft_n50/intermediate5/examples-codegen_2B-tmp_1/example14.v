// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk,posedge reset) 
begin
//if reset, output is 0
if (reset) out <= 8'b0;
//whenever a changeable signal comes in, store it
else if (load) out <= data;
//else if array is not full, left shift by one
else if (!load) out <= out << 1;
end
endmodule
