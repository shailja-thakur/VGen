// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

int main(){
  #include <stdio.h>

  int a = 0;
  int b = 0;
  out = 0;
  
  // Arrange the vertex points, such that the output went to the axon
  a = 3;
  b = 3;

  // Instantiate the module with the "AND" of 0 and 0
  and_gate module( a, b, out );

  a= 3;
  b= 1;

  // call the GENERATE funciton
  module.generate();
  printf("a= %d\t b= %d\t out= %d\n", a, b, out);

  a =3;
  b =0;
  
  // Call the execute funciton to continue raising or lowering our input
  // the axon
  module.run();
  printf("aendmodule
