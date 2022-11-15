// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input cin;

input a_in, b_in, cout_in;

output sum_out;

void main()
{
  // Initialize the inputs
  cin = 0;
  a_in = 0;
  b_in = 0;
  cout_in = 0;
  sum_out = 0;

  // Run the algorithm
  while (cin != -1)
  {
    // Read the inputs
    cin = get_input(cin_in);
    a_in = get_input(a_in);
    b_in = get_input(b_in);
    cout_in = get_input(cout_in);

    // Add the inputs
    sum_out = add(a_in, b_in, sum_out);

    // Print the outputs
    print(cout_endmodule
