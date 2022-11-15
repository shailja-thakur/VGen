// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (*) Qo( 0 ), clk;

reg arg0 = QCK( 0, in, 10 );
reg arg1 = QCK( 1, in, 12 );
reg arg2 = QCK( 2, in, 14 );
reg arg3 = QCK( 3, in, 16 );
reg arg4 = QCK( 4, in, 18 );
reg arg5 = QCK( 5, in, 20 );
reg arg6 = QCK( 6, in, 22 );
reg arg7 = QCK( 7, in, 24 );
reg arg8 = QCK( 8, in, 26 );
reg arg9 = QCK( 9, in, 28 );
reg arg10 = QCK( 10, in, 30 );
reg arg11 = QCK( 11, in, 162 );
reg out_sel;
wire [31:0] arg;
assign outendmodule
