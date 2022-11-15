// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
a = out;

////// testwire ////

// cningwire( in ) // this will need to wire in to its own in ref before it can target/wire the correct output
+ out
( in );

// defwire( in )
&& out
;

defwire( out when in replaced by out )
&& defined( in ) ;
+ ( in && defined( out ) );
+ ( in && = out );

#if defined( in )
defwire( in when not defined( in ) )
&& defined( out );
when && undefined( in ) && !defined( out )
&& out;
#endif

endmodule
