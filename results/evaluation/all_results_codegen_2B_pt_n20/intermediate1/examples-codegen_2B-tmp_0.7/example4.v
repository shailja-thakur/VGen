// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

void half_adder_isr(void);

void half_adder_isr(void) {
    cout = 4;
    sum = a + b;
}
endmodule
