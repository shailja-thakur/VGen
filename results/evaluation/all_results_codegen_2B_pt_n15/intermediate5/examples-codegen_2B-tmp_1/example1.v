// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg out;
assign out = load & data;

always @(posedge clk)
  if (reset) begin
    out = out & data;
    out = out << amount;
    load = 1;
  end
  else
    if ((resolving Clock)
    and (loading load)) begin
      out = out | (resolving Clock);
      load = 0;
    end

endprolog

assign out = out << (2* amount);

always @(posedge clk)
  if (reset) begin
    out = out & data;
    out = out << amount;
  end
endprolog

endmodule
