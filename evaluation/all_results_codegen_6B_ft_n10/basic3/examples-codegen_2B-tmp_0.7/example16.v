// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
wire [3:0] b; 
assign b = in[2]; 
assign pos = (b[3] >> 1) & 0x03; 
always @ (posedge clk) 
begin 
  if (pos == 0) 
    pos = 2; 
  else if (!(in[0] && in[1])) 
    pos = 0; 
  else 
    pos = 1; 
  if (in[0] || in[1]) 
    out = b[pos]; 
end 
); 
"""
    verilog_scc = """
module scc;
   reg [0:7] t;
   reg [0:7] s;
   reg [0:7] q;
   reg [0:7] c;
   reg [0:7] tp;
endmodule
