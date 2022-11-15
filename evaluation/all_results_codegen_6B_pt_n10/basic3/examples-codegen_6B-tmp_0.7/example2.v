// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or negedge rst)
  if( rst )
  begin
    pos <= 0;
  end
  else if( sel )
  begin
    pos <= in[2];
  end
end

entity priority_encoder_1 is priority_encoder(.sel = 1, .in = 1, .out = 0);
entity priority_encoder_2 is priority_encoder(.sel = 1, .in = 1, .out = 1);

endmodule
