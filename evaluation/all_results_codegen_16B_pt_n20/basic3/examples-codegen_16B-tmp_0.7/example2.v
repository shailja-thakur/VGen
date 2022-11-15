// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign a to out
// b and a are the two input bits.
always @(posedge clk) 
begin 
  case(sel) 
    0 : pos <= a; 
    1 : pos <= b; 
    default : pos <= 0; 
  endcase 
end 
endmodule
