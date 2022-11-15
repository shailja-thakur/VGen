// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

// wires used in the AND gate
wire t1;
wire t2;
wire t3;

// Implmentation of the AND gate
and(t1,a,b);
and(t2,t1,a);
and(t3,t1,b);
and(out,t2,t3);

endmodule
