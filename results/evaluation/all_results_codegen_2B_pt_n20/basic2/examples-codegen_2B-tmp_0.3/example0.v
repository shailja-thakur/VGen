// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

and_gate( a, b, out )
    wire [1:0] a;
    wire [1:0] b;
    wire [1:0] out;
    assign out = a & b;

endmodule
