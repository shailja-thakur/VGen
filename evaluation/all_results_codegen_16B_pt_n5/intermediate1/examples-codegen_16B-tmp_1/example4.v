// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;        
output cout;
output sum;

always #( 1 )        
begin
  sum <= ~( ( (a && b) | ({clock} = 0, !b)) | (({clock} = 1, b) && !a) );
  cout <= sum;
end;
endmodule
