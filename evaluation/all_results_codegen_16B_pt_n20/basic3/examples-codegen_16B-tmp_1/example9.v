// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
FullCounter ff(0); // Forwarding decoder
MyTimer  time( tcnt_rst );

//Every rising edge calls tim->period
setup: begin
	time.period( 1 );
	ff.count_start();
end  

always begin
	pos <= ff;
	if( ff.count_wrap() ) // Decoder done, priority encoder is enabled in next cycle
		time.period( in[2 : 0] );
	else if( ff.decided() && (time.t == 1) ) // Decoder done, and decoded a 0 in the critical cycle, start
		time.reset( 1 );
end
endmodule
