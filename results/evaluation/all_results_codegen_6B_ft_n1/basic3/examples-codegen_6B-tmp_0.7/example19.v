// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or posedge rst)
begin
  case(in)
    when 0,1 | sel,
      pos <= 0;
    else (reg[1] = reg[0] || (sel && !pos));
  endcase
end
endmodule
