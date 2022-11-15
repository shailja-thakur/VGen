// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

assign out = a & b; // you can use the '&' operator in place of this

END_END_module module and_gate(a,b,c);

input a,b;
output c;

and(c,a,b);

endmodule
