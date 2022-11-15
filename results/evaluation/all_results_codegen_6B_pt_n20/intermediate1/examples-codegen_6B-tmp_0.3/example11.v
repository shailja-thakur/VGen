// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

parameter sum = 0;

function half_adder() {
    sum = sum + a + b;
    cout = sum;
}
endmodule
