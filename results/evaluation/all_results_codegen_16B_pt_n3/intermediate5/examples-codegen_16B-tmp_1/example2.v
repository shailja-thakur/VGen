// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clock or negedge reset) begin
  if (load) begin
    out <= data;
  end else if (reset) begin
    out <= 0;
  end else begin
    out <= data << amount;
  end
end


// left shift and right rotate operation of bitmap
module bit_rol(clk,reset,amount,bits,out);
input clk,reset;
input [2:0] amount;
input [7:0] bits;
output reg [7:0] out;
always @(posedge clock or negedge reset) begin
  if (reset) begin
    out <= 0;
  end else if (amount<8) begin
    out <= (bits >> 1) | (bits << amount-1) | bits[amount-1];
  end else if (((amount-2)&7)==end
endmodule
