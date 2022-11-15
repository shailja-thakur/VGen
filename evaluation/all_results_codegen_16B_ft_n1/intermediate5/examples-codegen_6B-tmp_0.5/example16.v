// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or negedge reset)
  if (load) out <= data;
  else
  begin
    out <<= amount;
    out[7] <= data[7] << (amount-1);
    out[6] <= data[6] << (amount-1);
    out[5] <= data[5] << (amount-1);
    out[4] <= data[4] << (amount-1);
    out[3] <= data[3] << (amount-1);
    out[2] <= data[2] << (amount-1);
    out[1] <= data[1] << (amount-1);
    out[0] <= data[0] << (amount-1);
  end
end

// right shift and rotate operation
module right_rotate(clk,reset,amount,dataendmodule
