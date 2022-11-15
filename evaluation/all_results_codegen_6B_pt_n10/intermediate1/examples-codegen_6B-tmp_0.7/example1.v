// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder_gate( 
input a, b ) {
    wait();
    a = a & 1;
    b = b & 1;
    // The carry is the value of the last bit of a + b.
    sum = a + b;
    // Carry is the bit that carries.
    carry = sum & 1;
    if ( a == 1 ) {
        // Carry is 1 if a == 1, 0 otherwise.
        carry = carry + 1;
    }
    else {
        // Carry is 0 if a == 0, 1 otherwise.
        carry = carry - 1;
    }
    // The output is the sum or the carry.
    cout = sum + carry;
}




// The full adder adds two bits and produces a sum and carries the carry out.
module full_adder( 
input a, b,endmodule
