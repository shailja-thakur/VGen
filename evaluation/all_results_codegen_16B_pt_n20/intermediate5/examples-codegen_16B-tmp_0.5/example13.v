// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or posedge reset) begin
  if (reset) begin
    out <= 0;
  end
  else begin
    if (load) begin
      out <= data;
    end
    else begin
      out <= (data << amount) | (out >> (8-amount));
    end
  end
end
always @(posedge clk or posedge reset) begin
  if (reset) begin
    out <= 0;
  end
  else begin
    if (load) begin
      out <= data;
    end
    else begin
      out <= (data << amount) | (out >> (8-amount));
    end
  end
end
"""

# create the tester object
tester = tester(width=8, address_width=3, instruction_width=3,
                read_data_list=[endmodule
