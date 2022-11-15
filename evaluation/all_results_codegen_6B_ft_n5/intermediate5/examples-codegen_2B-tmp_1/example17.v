// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
wire [2:0] shift;
reg [2:0] shift_reg;
always @(posedge clk)
begin
  if (!reset)
  begin
    shift_reg <= shift;
  end
  out <= (load << shift) | (data >> (bits4 - shift));
end
end
endmodule
