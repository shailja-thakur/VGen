// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out using AND LOGIC ENTIRE RANGE

task and_gate()
{
  out = pmod( logic_or( a,b ), 10 );
}



// Design a module that implements an AND gate. The module has this interface:
//
//   input  a : 1x1 array of realness
//   input  b : 2x2 array of realness
//   output out : 1x1 array of realness
//
// The module has one instance of an AND gate, a and_gate is instantiated
// in sim registers and overflow in ticks_overflows (default 40). Inputs
// a and b are accessed as (a[1], b[0]). 
//

module and_gate_slow( 
    input a[1], 
    input b[2], 
    output out[1]);

    // given the AND access of a andendmodule
