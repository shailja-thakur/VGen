// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
//given only one input and output
//used the or() gate 

 and a0(
 .a(a),
 .b(b),
 .out(out)
 |
 .a(1'b0),
 .b(1'b0)
 |
 .out(1'b0)
 );
endmodule
