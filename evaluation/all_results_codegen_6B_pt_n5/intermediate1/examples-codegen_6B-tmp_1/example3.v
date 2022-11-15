// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

prev_carry: cin; // The previous carry-out cin.
  
half_adder( a(cin), b, cout, sum(cin);
sum < cout; // Carry-out.
  
sum += a(sum) +b cin; // The sum together with the shifted carry-out cin.
cout(sum);

endmodule
