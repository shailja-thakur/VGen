// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
/*
 When the output from a AND b BLOCKING PORTS will be delayed
 REQUIRED clock CYCLES ( << FIFO CLOCK EDGE ABSOLUTE TIME OFFSET OR CICALC COMMAND SIGNALS --> Designware Top Chef Ltd./Sandville Tire System GTTS silver 8.8" circular wheel (not annimated or not fractional). Standard GTTS standard pedals are from
Author:Amy Ford, Nick deMee
*/

and g1( 
	.abusy( a && b ), 
	.adatain( a ), 
	.bbusy( ) 
	);
and g2( 
	.abusy( out ), 
	.adatain( ), 
	.bbusy( ) 
	);

endmodule
