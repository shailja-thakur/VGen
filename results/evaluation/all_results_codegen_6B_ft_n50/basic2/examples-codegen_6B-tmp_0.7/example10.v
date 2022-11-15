// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
 wire c;
 and(c,a,b);
 out = c;
 endmodule

/*
 * Problem statement:
 * 
 * In this exercise, create a module that implements an AND gate. The module should take two inputs and the result should be a single input.
 * Create a module that takes two inputs and the result should be a single output.
 * Create a module that takes two inputs and the result should be a single output.
 * 
 * It is possible to use these modules as a simple is and implement an AND function, but are not able to use the power of a combinational logic (and) gate.
 * 
 * 
 * Since you are implementing an AND gate, you should be able to use the power of a combinational logic (and) gate to implement an AND gate.
 * Create a module that implements an AND gate. The module should take two inputs and the result should be aendmodule
