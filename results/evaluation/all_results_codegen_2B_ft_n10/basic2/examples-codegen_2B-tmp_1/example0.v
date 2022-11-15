// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out ( out = a & b ) ;
 output out;

 wire a,b;
 wire ab; //and_ output of AND gates

 or_gate or1(.a(a), .b(b), .out(ab));
 not n1(ab, out); //not_gate to give output of AND gate

endmodule
