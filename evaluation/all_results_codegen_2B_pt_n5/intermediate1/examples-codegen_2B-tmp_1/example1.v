// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

inner_loop:
  sum += a;
  sum = sum >>> 1;  // unpack.
  count = sum + b;
  sum = sum >> 1;
  if( count > (1<<( 31-FIN_MSB_BITS)) ) {
    sum = sum | ((1<<( 31-FIN_MSB_BITS)) - 1);
    sum = sum << 1;
  }
  a = b 
  if( (a != b) && (b != 0){  // using equality rather than <= b, 
    sum = sum + b + b;  // inconditional
    sum = sum >> 1;
    sum = sum + b + b;
    sum = sum >> 1;
  }
  b = a;
  if( b != 0 ) {
    update();
  }

output1:
endmodule
