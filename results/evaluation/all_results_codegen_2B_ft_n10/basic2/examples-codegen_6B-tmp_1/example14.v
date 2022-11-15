// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

    interface and_gate();


// The output is connected to the state of both inputs.
// The output feeds into module input.

module and_combinator(
  and_gate out(a,b,out),
  input a,
  input b);

module and_combinator_test(
  and_gate out(a,b,out),
  input a,
  input b);


module or_gate( 
    input a, 
    input b, 
    output out );

    // assing the OR of a and b to out

    interface or_gate();


// The output is connected directly to module input.
// The output feeds into module input.

module or_combinator(
  or_gate out(a,b,out),
  input a,
  input b);

module or_combinator_testendmodule
