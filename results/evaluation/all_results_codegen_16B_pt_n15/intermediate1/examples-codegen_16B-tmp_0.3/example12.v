// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout, sum;

wire cin, sum_out;

half_adder( a, b, cout, sum_out );

assign sum = sum_out;

always @( posedge a or posedge b )
begin
  if ( a and b )
  begin
    sum_out <= ~( a and b ) and cin;
  end
  else
  begin
    sum_out <= 0;
  end
end

endmodule
