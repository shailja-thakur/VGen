// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=3, do not change output. 
wire [4:0] A;
wire [4:0] B;
assign A = a;
assign B = b;
assign out = ( sel==0 )
? A
: ( ( sel==1 )
? B
: A&FILE
);
endmodule
