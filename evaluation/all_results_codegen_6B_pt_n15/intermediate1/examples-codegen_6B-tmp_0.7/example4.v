// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder_r1( a, b, cout, sum )
  sum <= (a + b) & (a + b);
endfunction

function half_adder_r2( a, b, cout, sum )
  sum <= a + b;
endfunction

behavior half_adder_bb( a, b, cout, sum )
  if a > b then 
      output a;
      output cout;
      output b;
      output sum;
  else
      output b;
      output cout;
      output a;
      output sum;
endbehavior
endmodule
