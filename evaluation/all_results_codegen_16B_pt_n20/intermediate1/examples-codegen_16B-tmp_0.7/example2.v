// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

reg a;
reg b;
reg cout;
reg sum;

always @ (posedge clk) {
  if( a == 1 ) {
    sum <= (a and b);
    cout <= (b and not a);
  } else if( b == 1 ) {
    sum <= (not b and b);
    cout <= (a and not b);
  } else {
    sum <= (a and b);
    cout <= (a and not b);
  }

}

always @ (posedge clk) {
  if( a == 1 ) {
    b <= ~b;
  } else if( b == 1 ) {
    a <= ~a;
  }
}

always @ (posedge clk) {
  if( a == 1 ) {
    sum <= (a and b);
endmodule
