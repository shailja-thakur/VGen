// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder_add( a, b, cout, sum ) {
  if ( a == 0 ) {
    cout = b;
    sum = b;
  }
  else if ( b == 0 ) {
    cout = a;
    sum = a;
  }
  else {
    sum = (a + b) & 0x7;
    cout = (a + b) >> 3;
  }
}

function half_adder_carry( a, b, cout, sum ) {
  if ( (a + b) >> 3 == 0 ) {
    cout = 0;
    sum = 0;
  }
}

function half_adder_sum( a, b ) {
  return (a + b) & 0x7;
}

function half_adder_carry_sum( a, b )endmodule
