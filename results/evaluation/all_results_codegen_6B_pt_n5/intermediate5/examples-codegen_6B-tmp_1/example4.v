// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [7:0] out = ~data >> (7 - amount) & loadA;
// when load is low, load data followed by load of loadA adjusted by amount
reg loadA = load & load_loadA[amount];
always @(posedge clk or negedge reset)
begin
  case load:
      out <= loadA;
  end
`
endmodule
