// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
assign out = a & b;
/* specifing constractor for assigning random status to a and b
assign {a, b} = rand;
*/
endmodule
