// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    // Write a test program that will test this module.

void main() {
    and_gate A( .1);
    and_gate B( .6 );
    A.in_a( .3 );
    A.in_b( .2 );
    A.out( .1 );
    
    B.in_a( .5 );
    B.in_b( .4 );
    B.out( .6 );

    wait( 1.0 );
    
    assert( A.out == .3 );
    assert( B.out == .4 );
}
endmodule
