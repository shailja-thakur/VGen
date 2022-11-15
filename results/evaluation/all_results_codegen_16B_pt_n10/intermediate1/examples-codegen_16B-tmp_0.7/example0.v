// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
reg a, b;
wire cout, sum;

begin
   sum <= b + a + carry;
   a <= a + b + carry;
   carry <= a <> b;
end

(* synthesize *)

assign half_adder_out = half_adder( a, b, cout, sum );
endmodule
