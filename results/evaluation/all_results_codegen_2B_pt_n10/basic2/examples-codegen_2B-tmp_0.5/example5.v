// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    and_gate( a, b, out )
    {
      if ( a == 1 && b == 1 )
        out = 1;
      else
        out = 0;
    }

//------------------------------------------------------------------------------

module or_gate( 
    input a, 
    input b, 
    output out );

    // assign the OR of a and b to out
    or_gate( a, b, out )
    {
      if ( a == 1 || b == 1 )
        out = 1;
      else
        out = 0;
    }

//------------------------------------------------------------------------------

module not_gate( 
    input a, 
    output out );

    // assign the NOT of a to out
    not_gate( a, out )
    {
      if ( a == 0 )
        out = 1;
      else
        out =endmodule
