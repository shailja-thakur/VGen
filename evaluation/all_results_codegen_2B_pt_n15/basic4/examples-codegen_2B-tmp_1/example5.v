// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
wire [4:0] r_a;
wire [4:0] r_b;
initial begin
  r_a=a;
  r_b=b;
end
always @ ( posedge clk )
begin
  if (sel) r_a=b;
  else r_b=a;
end
end
initial 1'b0
always @ ( posedge clk)
begin
  sel=1;
end
always @ ( posedge clk )
begin
  sel=0;
end
end
endmodule
