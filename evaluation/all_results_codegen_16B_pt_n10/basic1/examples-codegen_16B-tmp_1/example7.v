// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign activator( in, out );
// assign dout to din
wire_assign din_out( bin, dout );


*/


/* 
Design a single nway-flip-flop (booth) element:

process gate(),
 select bit( clock ),
 T         side( gate ),
 D         side( gate ),
 r_in      side( T ),
 RES       side( T ),
 Q         side( gate ),
 Cin       side( D ),
 Clk       side( RES ),
 Vie         out ( Q ),
 Vei         out ( RES ),
 out       start ( Cin ),
 key       Q,
 reset       in
 */ 
/*  
d2_ff(  ),
 d   ( clk ),
 R     ( ),
 C   ( in ),V   ( ),
 I   ( ),K   ( )
*/endmodule
