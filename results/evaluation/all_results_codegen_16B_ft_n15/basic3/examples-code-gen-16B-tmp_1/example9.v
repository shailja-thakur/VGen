// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
//  generated Verilog code for priority_encoder:
//module priority_encoder(
// in = [i0, i1, i2],
// pos = [p0, p1]
//);
assign b = in[2];
assign a = in[1];
assign c = in[0];
always @( *) begin
if (a==1) begin
  out=b;
end
if (c==1) begin
  out=a;
end
if (b==1) begin
  out=c;
end
else begin
  out=0;
end 
end

assign p0 = in[0];
assign p1 = in[2];
// assign p2 = in[2];
// assign p3 = in[3];
// assign p4 = in[4];
// assign pendmodule
