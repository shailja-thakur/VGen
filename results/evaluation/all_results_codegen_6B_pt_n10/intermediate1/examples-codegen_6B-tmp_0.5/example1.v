// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

output half_adder_out;

function half_adder_func( a, b )
    half_adder_out <= (a + b + a + b);
end half_adder_func;

end half_adder;

module half_adder_mod(
input a, b,
output cout, sum, carry_out )

half_adder_out <= (a + b + a + b + carry_out);
end half_adder_mod;

end half_adder_mod;

endmodule
