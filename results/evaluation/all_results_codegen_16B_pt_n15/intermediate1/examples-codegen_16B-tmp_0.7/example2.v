// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
  // each half adder has two inputs and two outputs
  // inputs are connected to the internal nodes
  // outputs are connected to cout
  // the carry-out is connected to sum
  // the type of the internal nodes is bool
  // cout is initialized to false
  // sum is initialized to false
  // cout and sum are connected to cout and sum

  // Internal nodes
  bool A = false, B = false;
  // cout and sum are connected to their respective internal nodes
  // these internal nodes are connected in the following way:
  // cout ---> A ---> cout
  // sum ---> B ---> sum
  // A and B are connected to each other in the following way:
  // A ---> B ---> A
  // B is connected to cout in the following way:
  // B ---> A ---> cout
  // B is connected to sumendmodule
