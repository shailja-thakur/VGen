// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a and b to out. 

wire [4:0] p;

reg [4:0] output_sel;
reg [4:0] output_p;

always @(posedge clk)
    if ( !a[1] )
	output_sel <= 0;
    else if ( !a[2] )
	output_sel <= 1;
    else 
	output_sel <= 2;

always @(posedge clk)
    if ( sel 
	&& output_sel == 0 )
	output_p <= p[1];
    else if ( sel 
	&& output_sel == 1 )
	output_p <= p[2];
    else if ( sel 
	&& output_sel == 2 )
	output_p <= p[3];
endmodule
