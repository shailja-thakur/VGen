// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
if (load == 1) begin loop_symbol:
out{3'd7} = data{3'd7} << 3'd1;
out{3'd2} = data{3'd1} >> 3'd1;
end
end
endmodule
