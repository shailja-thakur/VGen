// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

void half_adder( 
input a, b,
output cout, sum );

void half_adder( 
input a, b,
output cout, sum ) {
    bool carry = false;
    bool sum = false;
    
    if (a == 1) {
        sum = true;
    }
    
    if (b == 1) {
        sum = true;
    }
    
    if (a == 0 && b == 0) {
        sum = false;
    }
    
    if (sum == true) {
        cout = 1;
    } else {
        cout = 0;
    }
}
endmodule
