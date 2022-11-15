// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module assign( input in, output out ) {
    out <= in;
}

module mux1( input a, input b, input c ) {
    assign( a, in0 )
    assign( b, in1 )
    assign( c, in2 )
    assign( out, in0 | in1 | in2 )
}

module mux2( input a, input b, input c ) {
    assign( a, in0 )
    assign( b, in1 )
    assign( c, in2 )
    assign( out, in0 & in1 & in2 )
}

module mux3( input a, input b, input c ) {
    assign( a, in0 )
    assign( b, in1 )
    assign( c, in2 )
    assign(endmodule
