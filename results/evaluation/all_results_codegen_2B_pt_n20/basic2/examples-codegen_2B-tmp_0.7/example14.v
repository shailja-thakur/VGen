// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

main
{
  // Create a unique instance of the gate
  and_gate and( A, B, X );

  // Assign the output of the gate to a variable
  // out = X;

  // Simulate the gate
  while ( X > 0 )
  {
    X--;

    // If a is 1 and b is 1, then make the
    // output 1 else make the output 0
    if( A == 1 and b == 1 ) out = 1;
    else out = 0;
  }
}


// assign an AND gate to a variable
endmodule
