// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout, sum;

half_adder(a, b, cout, sum) {
    sum = a + b;
    cout = sum >> 1;
    cout = cout << 1;
    cout = cout + (sum & 1);
}

// This is a full adder. A full adder adds four bits and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum );

input a, b;
output cout, sum;

full_adder(a, b, cout, sum) {
    sum = a + b;
    cout = sum >> 2;
    cout = cout << 2;
    cout = cout + (sum & 3);
}

// This is a full adder. A full adder adds four bits and producesendmodule
