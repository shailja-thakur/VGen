// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function sum() {
  var a1 = a;
  var b1 = b;
  var sum = 0;
  var carry = 0;
  while(1) {
    // Carry out the half adder adding bits from a1 and b1.
    if( b1 == 0 ) {
      carry = a1;
      break;
    }
    sum = sum + b1;
    // If the sum is complete, stop.
    if( sum == 0x7f ) {
      break;
    }
    // Else, move on to the next bit in b1.
    a1 = ( a1 & 0x00ff ) << 1;
    b1 = ( b1 & 0x00ff ) << 1;
    
    // Compute the next half adder.
    if( b1 & 0x0080 ) {
endmodule
