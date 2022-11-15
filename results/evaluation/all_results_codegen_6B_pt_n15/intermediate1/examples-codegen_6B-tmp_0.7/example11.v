// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

assign( cout );
assign( sum );

reg i, j;

// Carry-out is in bit 7
assign( sum_carry_out( sum ) );

// Sum is in bits 0-6
assign( sum_and_carry( sum, sum_carry_out ) );

always_comb
begin
    sum_carry_out <= sum_carry_in;
end

endmodule
