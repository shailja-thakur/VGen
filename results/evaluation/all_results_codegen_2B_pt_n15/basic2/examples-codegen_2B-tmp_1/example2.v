// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out.
    // Inputs a, b, and out must have the same number

void use_case(
    and_gate const &andGate, 
    invalid_port const &invalidPort ) {
  
  // output is not used
  auto output = invalidPort< int >();

  // Inputs a, b, and out must have the same number
  auto a = invalidPort< int >();
  auto b = invalidPort< int >();

  vector< bool > sum = { 0 };

  for ( auto input : { a, b } ) {
    u32 sum_n = 0;
    for ( auto input_n : input ) {
      sum_n += input_n;
    }
    // Sum all inputs multiplying by internal input weight
    // Input weight to output internal weights
    output = sum_n < 0 ? 0 :endmodule
