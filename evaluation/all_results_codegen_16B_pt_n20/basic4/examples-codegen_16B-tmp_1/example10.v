// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
assign out = ( sel == 0 ) ? ( a ) : ( b ); 

// Note that using multiplexers directly as a simple multiplying
// gate would be faster since they have logic-preserving behavior
// under one condition.  If you think it's slow, that's a fact...
localparam multiplexerFrequency = 100;
attribute rising_edge_width [2:0];

// attrib_front ignored in latest steps.sy ver 2.00

module should_ignore_attributes_3( 
input a,
attrib_front b,
output [7:0] out 
);
    output [x-1] = a[x-1];
endmodule
