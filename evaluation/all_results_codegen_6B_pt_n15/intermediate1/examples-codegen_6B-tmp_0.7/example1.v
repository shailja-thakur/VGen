// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

begin:
  // false accepts no inputs.
  in := false;
end:
  if out<cout then goto begin;
  if out<sum then goto add_b;
  if out<sum+carryout then goto half_adder;
  if out<sum+carryout+1 then goto add_b;
  if out<sum+carryout+2 then goto half_adder;
  if out<sum+carryout+3 then goto add_b;
  if out<sum+carryout+4 then goto half_adder;
  if out<sum+carryout+5 then goto add_b;
  if out<sum+carryout+6 then goto half_adder;
  if out<sum+carryout+7 then goto add_b;
  if out<sum+carryout+8 then goto half_adder;
  if out<end
endmodule
