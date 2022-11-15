// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

basic half_adder_basic( 
input a, b,
output cout, sum 
);


/*
  Generates the example circuit.
*/
void generate_example_circuit()
{
  half_adder_basic ader_instance;

  // Initializing the inputs
  input a_port("a", clk, RST_N);
  input b_port("b", clk, RST_N);

  // Initializing the internal outputs
  cout = output("cout", ab_reg[AB_OUT5], RST_N);
  sum = output("sum", ab_reg[AB_OUT4], RST_N);

  /*
    The generator box enables clarity when specifying peripherals.

    Generating the complete half adder using two blocks.
  */
  [sum, sum_pointer] TGUI_AND_endmodule
