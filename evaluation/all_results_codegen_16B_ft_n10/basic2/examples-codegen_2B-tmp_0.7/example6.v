// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
wire a_and_b;
wire and_out;

and
and1
(
.a(a), 
.b(b)
, 
.out(a_and_b)
);

and
and2
(
.a(a_and_b), 
.b(b)
, 
.out(and_out)
);

//assign out = and_out;
endmodule
