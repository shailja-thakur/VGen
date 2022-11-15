// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a3  = a[3],  a2 = a[2],  a1 = a[1],  a0  = a[0];
wire b3  = b[3],  b2 = b[2],  b1 = b[1],  b0  = b[0];

always @* begin
  cout = 0;
  sum  = 0;
  cout = cout | ((a3 & b3) == 0 ? 1 : 0);
//  cout = cout | ra[1];
  sum = sum + (a2 << 5) + (a1 << 3) + a0;
  cout = cout | ((b2 & (b3/2)) == 0 ? 1 : 0);
  sum = sum + (b1 << 5) + (b0 << 3) + b1;
end

destinationendmodule
