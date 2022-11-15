// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder_output() {
    if( sum == a || sum == b ) {
        cout = sum;
    } else {
        cout = sum + a + b;
    }
}

function half_adder_sum() {
    if( a == b ) {
        sum = a;
    } else {
        sum = a + b;
    }
}

function half_adder_carryout() {
    if( sum == a + b ) {
        sum = sum;
    } else {
        sum = sum + a + b;
    }
}

endmodule
