// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
function half_adder_half_adder( a_in, b_in, cout_out, sum_out );
function half_adder_half_adder( a_in, b_in, cout_out, sum_out )
  cout_out <= sum_out(0) + a_in + b_in;
end half_adder_half_adder;
end half_adder;
endadder;
endmodule
