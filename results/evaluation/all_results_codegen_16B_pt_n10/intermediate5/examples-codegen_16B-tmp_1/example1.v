// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @* begin
  if (load)
  begin
    case (amount)
      x: 0;
		  y: case (amount=2)
      // out = data << amount
		  // out = (out << 4) | (out >> (2 xlog 4) - 1) 
		  // this is what we want for loading data
		  // right shift by no dof of 2xlog4=Log2(0b0)
		  case (amount=3)
      // out = (out << 8) | (out >> (2 xlog 8 + 1) - 1) 
		  // this is what we want for no load
		  case (amount=4)
		  // out = (out << 16) | (out >> (2 xlog 16 + 1) - 1) 
		  // this is what we want for no load
end
end
endmodule
