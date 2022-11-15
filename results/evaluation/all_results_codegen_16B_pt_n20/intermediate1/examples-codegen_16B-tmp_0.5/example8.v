// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout, sum;

void main() {
    cout = 0;
    sum = 0;
    if ( a == 0 || b == 0 ) {
        cout = 1;
    } else {
        cout = 0;
        sum = a + b;
    }
}
endmodule
