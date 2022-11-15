// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign.procedure() { 
	out( ~in ); });
// assign in to out
module wire_assign.procedure( in in, out out ) {
	out( ~in );
	// now we construct the plan that we also want to reinstate 400 times...
	// let's bit-reverse morse...
	// let the output high
	module out_high( in );
	// now let's invert it
	module out_low( in );
	// reset the input to a 1...
	module in_reset( in );
	// now set the output to be high, then low
	module high_low( in );
	// assign high level to our reset
	out_high();
	// now set our reset high...
	in_reset( 1 );
	// wait for a looooong time
	delayendmodule
