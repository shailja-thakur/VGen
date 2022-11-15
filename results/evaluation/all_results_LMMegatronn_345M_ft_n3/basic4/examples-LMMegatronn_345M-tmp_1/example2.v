// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
//assign out[0]=a[1] & sel? a[0]:a[1] & sel? a[0]:a[0] ;
// 
// sel=0 no sel=1
// sel=1 no sel=0
// sel=1 no sel=0

assign out = sel? out2: in;
assign out = sel? out3: in2;
assign out = sel? out4: in3;
assign out = sel? out6: in4;
assign out = sel? out8: in5;
assign out2 = sel? out5: in4;
assign out3 = sel? out6: in5;
assign out4 = sel? out7: in6;
assign out5 = sel? out8:endmodule
