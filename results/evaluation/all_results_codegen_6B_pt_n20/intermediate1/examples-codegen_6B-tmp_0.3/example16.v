// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a_t, b_t;
output cout_t, sum_t;

void main() {
    half_adder( a_t, b_t, cout_t, sum_t );
}
endmodule
