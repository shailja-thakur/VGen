// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (posedge clk or negedge rst) begin
  if (rst == 1) begin
    pos = 0;
  end
  else begin
    if (sel) begin
      pos = pos | in[2];
    end else begin
      pos = pos & in[2];
    end
  end
end

// Module for inverting the input
module inverter(
input [1:0] in,
output reg [1:0] out);
// When sel=1, assign b to out
always @ (posedge clk or negedge rst) begin
  if (rst == 1) begin
    out = 0;
  end
  else begin
    if (sel) begin
      out = ~in;
    end else begin
      out = in;
    end
  end
end

// Module forendmodule
