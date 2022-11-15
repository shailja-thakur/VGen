// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

int out = 0;

reg A, B;
wire cyc;

if (a == 1
	and b == 1){
	A = 1;
	B = 1;
}


else{
	A = 0;
	B = 0;
}

always #(A && B) {

	A = A and b;
	B = B and a;

	out = A + B;

	A = A and b;
	B = B and a;

}

always {
	sum = out;
}

endmodule
