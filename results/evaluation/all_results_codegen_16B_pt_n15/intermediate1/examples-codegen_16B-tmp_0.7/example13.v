// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout, sum;

void main() {
	sum = 0;
	cout = 0;
	if ( a > 0 ) {
		sum = b + 1;
		cout = 1;
	}
	else {
		sum = b + 1;
		cout = 1;
	}
}

endmodule
