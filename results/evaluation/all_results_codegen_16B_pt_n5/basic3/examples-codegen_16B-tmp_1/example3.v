// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
//When sel=0 and in=b, assign e to out.
always @ (posedge clk) begin
if ( in[pos[1]] && (~in[pos[0] ])) begin
pos[0] <= alter(~sel); // decrease priority of b
pos[1] <= sel;
end else  if ( in[pos[1]] && (~in[pos[0]]))
  pos[1] <= ~pos[0];
end else if ( in[pos[0]] || in[pos[1]] )
  pos[0] <= ~pos[0];
end 
end module;


endmodule
