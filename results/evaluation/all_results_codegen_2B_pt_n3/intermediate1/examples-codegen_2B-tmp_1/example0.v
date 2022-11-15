// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

void evaluate();
  


int main( char *argv[] )
{

  // print argv
  //pv("Argv: ", argv);

  char* _a = argv[1];
  /* int a = atoi(argv[1]); */ // argv[1] is a string arg
  checkA(_a);
  char* _b = argv[2];
  int b = atoi(argv[2]);
  checkB(_b);

  setupPvs();
  loadKernelCode();

  coordinates, i;
  unsigned n_chi = stripCount(kstart);

  // compute input's length in words, assume chunk size is 2 bits!
  int w_in = eightbit(atof(argv[3]));
  evaluate();
  //printf("w_in: %d\endmodule
