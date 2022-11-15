// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @ (posedge clk or negedge reset) begin
  if (load) begin
    out <= data;
  end else begin
    out <= data << amount;
    out[7] <= out[0] <= out[6] <= out[5] <= out[4] <= out[3] <= out[2] <= out[1] <= out[0];
  end
end

// right rotation and shift operation
module right_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by right shift the out register by amount bits
always @ (posedge clk or negedge reset)endmodule
