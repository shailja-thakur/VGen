// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
 input a,b,
 output out;

 // instantiate two one bit subtractors
and_2_bit a_1( .a(a),
.b(b),
.out(out));
endmodule
