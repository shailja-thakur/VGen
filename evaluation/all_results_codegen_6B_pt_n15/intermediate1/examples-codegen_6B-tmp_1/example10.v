// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function bin(n)
output bin;
  bin <= "" & n.
for (1 <= i <= n. #terms() == n.
  if (b(i).=mod(2).
  and(a(i)=2.
  then (carryout="1") else & half_adder(
      a(i + 1), b(i - 1),
      (cout(i + 1), sum(i - 2, i, i - 1))
  )
)
);
endmodule
