// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
#5
begin
if (load == high) begin
    out = 0;
    for (i = 0; i < amount; i++) out = data << i;
end else begin
    out = data;
	#6
	#7
	#8
end end
// output o (value off the circuit)
#10
output [5:0] o;
// output o (value off the circuit)
end
endmodule
