// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

int add_carry = 0;
int f_carry = 0;

always @(posedge clk)
    if( en_f )
        add_carry = sum + did_bit_set_c;
    else
        add_carry = sum + did_bit_set_c + f_carry;
    f_carry = add_carry;
    sum = override_sum; 
T <= sum;

always @(negedge clk)
    cout <= ~f_carry;
endmodule
