// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
initial begin
  if (load) begin
    if (!reset) begin
      out <= (data << amount);
    end else begin
      out <= 0;
    end
  end else begin
    if (!reset) begin
      out[0] <= (data[0] << amount);
      out[1] <= (data[1] << amount);
    end else begin
      out <= 0;
    end
  end
end
rep #52{
  config adj downshift = left;
  config adj larger = left;
}

endmodule
