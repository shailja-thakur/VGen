// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
reg [4:0]MUX[3:0];
always@(a or b or sel)
begin
case(sel)
1'b0 :
MUX[0]<=a;
1'b1 :
MUX[1]<=b;
endcase
end
always@(sel)
begin
case(sel)
1'b0 :
out <= MUX[0];
1'b1 :
out <= MUX[1];
endcase
end
endmodule
