// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
 assign out = a & b;
 
 endmodule
 // ---------------------------------------------------------------------
 // The following two modules generate classic gates for
 // synthesis. Remember to expand your parenthesis for large-
 // scale programming.
 // ---------------------------------------------------------------------
 `timescale 1ns / 1ps
 
 module xor_gate(
�icepsinput a;
�etricalinput b;
� ruautoroutput out);
 
 assign out = a ^ b;
 
 endmodule // ---------------------------------------------------------------------
 // The following two modules generate classic gates for
// synthesis. Remember to expand your parenthesis for large-
 // scale programming.
// ---------------------------------------------------------------------
 `timescale 1ns / 1ps
 
 module or_gate( 
��uceinput a;
��culesinput b;
�� orgateoutput out);
 
 assign out = a | b; 
 
 endmodule 
 `timescaleendmodule
