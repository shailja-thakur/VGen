// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

{
  sum = a + b;
  cout = sum & 1;
}

""")

#
# Define the instruction sequence
#
#
def create_instruction_sequence():
  seq = [
      Instruction('half_adder',
                  args = [
                      X('a', 2),
                      X('b', 2),
                      Output('cout', 1),
                      Output('sum', 3),
                  ],
                  deps = [Instruction('add',
                                      args = [X('a', 2), X('b', 2)],
                                      deps = []),
                          Instruction('carry',
                                      args = [X('sum', 3)],
                                      deps = [Instruction('add',
                                                          args = [X('a', 2endmodule
