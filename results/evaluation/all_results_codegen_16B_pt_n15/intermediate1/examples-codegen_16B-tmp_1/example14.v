// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

integer*2 half_adder$_result;
integer ca;

void half_adder$_X(input a, b, output cout) {

  half_adder$_result = sum$_input0 + sum$_input1 + ca;
  sum$_output = half_adder$_result[0 ];

  cout = sum$_output % 4;

  ca = (half_adder$_result[1 ]>=0 ) ;
}
endmodule
