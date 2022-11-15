// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
prio_enc = in[1]*3+1'b1;
always @(posedge clk) 
begin 
  if (sel) begin
    if (prio_enc) begin 
      // Set priori encoder to pointer to current bit.
      pos <= b;
    end
  end else begin
    // DON'TORTOUCH COPY from p7 to end for now.
    //b <= 0;
  end
endendmodule
