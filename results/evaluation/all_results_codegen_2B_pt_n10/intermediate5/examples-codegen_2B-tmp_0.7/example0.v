// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk)
begin
  if (load)
    out = data;
  else
    out = data << amount;
end
);
// SPI master receive and transmission
module spi_master_rx(clk,reset,data_in,data_out,clock);
input clk,reset;
input [7:0] data_in;
output [7:0] data_out;
// receive and send data
always_comb
begin
  if (clk)
    data_out = data_in;
end
// transmit data
always_comb
begin
  if (clk)
    data_out = data_in;
end
);

// Test the output of the left shift operation
module test_left_shift(clk,reset);
input clk,reset;
input [7:0] data;
endmodule
