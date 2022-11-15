// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

module operation;
input in1[8];
output out1[8];

input in2[8];
output out2[8];

// The operations below are only for this module.
// The next block of code is just to generate the output.
void operation_gen( int i, int j )
{
  in1[i] = j;
  in2[i] = j;
  sum += in1[i];
}

void add_gen( int i, int j )
{
  in1[i] += j;
  in2[i] += j;
  sum += in1[i];
}

void carry_out_gen( int i )
{
  sum += in2[i];
}

// We create a simple function to generate the output.
void operation_gen_out( int i,endmodule
