// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

and_gate( a, b, out )
  //@ requires [?f] and [?g] and output out;
  //@ ensures [f] and [g] and out; 
{
  //@ close and_gate_and(a,b,out);
}


endmodule
