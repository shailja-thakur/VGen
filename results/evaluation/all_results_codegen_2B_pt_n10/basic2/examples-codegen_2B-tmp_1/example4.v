// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    void and_gate::run() {
       out = and( a, b );
   }

    // keep the inputs from outside the module invalid.
    void and_gate::reset() {
   }

endmodule
