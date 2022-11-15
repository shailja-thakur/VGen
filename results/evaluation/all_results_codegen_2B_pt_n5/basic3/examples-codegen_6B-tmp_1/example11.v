// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
reg [1:0] sel={1'b0,x?[in[2]]:0,x?[in[1]]:1,x?[in[0]]:2}; // relaxation LHUE - enum: 0 SHCOLOR
always @(posedge clk)
begin
  if seld_2x als > 0 & d_selh & sel > 0 & s_selh { begin
    if   sel == 2{ pos <= 0; } // HUE
    else if select c3&b>1|prefetch(d+8)&b>2|d>255|prefetch(d+8)>255	{ pos <= 1; } // LACLY
    else if select c2&b>1|d>0x001f{ pos <= 2; } // CMC
    else if select c1&b>1|end
end
endmodule
