// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or negedge reset) begin
  if(reset == 1) begin
    out <= 0;
  end
  else begin
    if(load == 1) begin
      out <= data;
    end
    else begin
      out <= (data << amount) | (out >> (8-amount));
    end
  end
end
endmodule
