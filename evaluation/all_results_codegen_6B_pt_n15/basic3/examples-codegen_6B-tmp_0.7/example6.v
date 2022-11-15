// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (posedge clk or negedge rst) begin
  if (rst) begin
    pos <= 0;
  end
  else begin
    if (in[0] && in[1]) begin
      if (sel) begin
        pos <= 1;
      end
      else begin
        pos <= 2;
      end
    end else if (!in[0] && !in[1]) begin
      pos <= 0;
    end
  end
end

// The priority encoder is wired such that the inputs must be
// active to be considered valid. This is not required, but
// provides a simple way to track the number of input
// transitions.
always @ (posedge clk or negedge rst) begin
  if (rst) begin
    count <= 0;
  end
  else begin
    if (sel) begin
end
end
end
endmodule
