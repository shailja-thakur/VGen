// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign in( out );
// end of module wire_assign


// module gate_adder( input a, input b, output sum );
// component adds two numbers
module gate_adder( input a, input b, output sum );
  gate_adder( a, b, sum );
// end of module gate_adder


// module m_adder( input a, input b, output sum );
// module divides two numbers
module m_adder( input a, input b, output sum );
  gate_adder( a, b, sum );
// end of module m_adder


// main function
void m_adder( input a, input b, output sum );
  m_adder( a, b, sum );
// end of main function

// main
void main()
{
  input a = 0, b = 0;
  output sum = 0;
endmodule
