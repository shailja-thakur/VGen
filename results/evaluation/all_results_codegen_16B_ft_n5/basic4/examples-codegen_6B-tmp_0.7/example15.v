// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @(posedge clk or negedge rst) begin
   if (rst) begin
      out <= 0;
   end
   else begin
      out <= sel ? a : b;
   end
end
`;

const multiplex = `
module mux( 
output [4:0] in,
input sel,
input [4:0] a,
input [4:0] b );
// When sel=0, assign a to in. 
// When sel=1, assign b to in.
always @(posedge clk or negedge rst) begin
   if (rst) begin
      in <= 0;
   end
   else begin
      in <= sel ? a : b;
   end
end
`;

const multiplex_2to1 = `
module mux(endmodule
