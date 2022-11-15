// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Takes a decimal sum as an input 
function half_adder( a, b, cout, sum ) {
cout <= sum + ( a & b );
sum <= a & b | cout;
}

endmodule
