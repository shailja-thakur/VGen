// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

  half_adder(0);
  half_adder(1);
  half_adder(2);
  half_adder(3);
  half_adder(4);
  half_adder(5);
  half_adder(6);
  half_adder(7);
  half_adder(8);

  function carry(h,k,wdn);
  [0,8];
  carry(wdn, 0, 8);
end;

  function half_adder( a );
  input << a;
  output cout;
  [0,1,a];
  carry(1, 0, a);
end;

  function half_adder( a, b, cin, cout );
  input cin, cout;
  output cout;
  half_adder(cin, cout, 0);
  half_adder(cin, cout, 8);endmodule
