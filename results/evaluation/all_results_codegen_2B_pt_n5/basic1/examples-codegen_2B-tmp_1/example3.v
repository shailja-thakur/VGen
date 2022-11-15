// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
// wecon out( in, last )
void wire_assign( wire in, output out ) {
	wire out_seg			= freeze(out);
	wire out_version	= output_port<3>(out).connect(in);
	wire last_bit		= output_port<4>(out).connect(
									output_port<final>(out_seg));
	wire nf(OUT,out_version,
				OUT,out_seg,
				OUT,last_bit,
				0,last_bit );

		nf				<= in;
		out				<= nf;
}
// assert( working, if not, we fix it up )
void assert_working( output out ) {
	if( !working(out) ) {
		print "WTF? isn't working :/\n";
		wacky_assertendmodule
