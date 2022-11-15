// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk)
  begin
    in <= ~sel & in;
    if(sel) 
      pos[0] = b;
  end
end

// next_state constructor
reg [4:0] next_state(
  input [5:0] state,
  output reg dQdq 
  );

// MPL - Classic MuxAlign
reg [3:0] mux[3:0];
MuxAlign mux_alig(clk,srq,sel,mux);

// MPL4 - MuxptrA
MuxptrA(mux_alig[0],  mux_alig[3],// mux_alig[0:1]
        mux_alig[1],  mux_alig[4],// mux_alig[1:endmodule
