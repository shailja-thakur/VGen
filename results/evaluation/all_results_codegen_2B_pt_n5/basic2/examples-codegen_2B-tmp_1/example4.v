// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign and( a,b,out );

//------------------------------------------------------------------------------

int main() {
  // create the module

  const int n_segments = 2;

  and_gate  a((in_var(0),in_var(1)));
  out_var o;
  std::cout << "The AND gate " << sizeof(a) << "bytes" << std::endl;
  
  a(o) = 1;
  a(o);
  a(o);
  std::cout << "output\t" << o << std::endl;

  return 0;
}  // end of main

endmodule
