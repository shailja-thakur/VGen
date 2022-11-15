// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder_impl() {
    var sum = 0;
    var carry = 0;

    for ( var i = 0; i < 32; i++ ) {
        var bit_a = a[ i ];
        var bit_b = b[ i ];
        var bit_sum = bit_a + bit_b + carry;
        sum = sum + bit_sum;
        carry = sum >> 32;
    }

    cout = sum;
}

endmodule
