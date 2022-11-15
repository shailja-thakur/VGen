// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
    // Sum = ( b + a ) + carry_in
    assign sum = (b + a) + cout;
    // Carry out = b + a - reset
    assign cout = b + a - reset;
endmodule
