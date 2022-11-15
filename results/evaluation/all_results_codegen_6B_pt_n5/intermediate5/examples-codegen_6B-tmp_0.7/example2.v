// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or negedge load)
  out <= (load ? data : left_rotate(out << amount, out >> (32-amount), amount));
end

// shift right operation
module right_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise, rotate the out register by amount bits and shift it right by amount bits
always @(posedge clk or negedge load)
  out <= (load ? data : right_rotate(out >> amount, out << (32-amount), amount));
end

// shift left operation
module shift_left(clk,reset,amount,data,endmodule
