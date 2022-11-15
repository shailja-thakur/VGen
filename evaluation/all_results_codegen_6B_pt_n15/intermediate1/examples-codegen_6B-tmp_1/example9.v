// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum ); // cout is the output channel


function half_adder( 
input a, b,
output cout, sum )

    local carry = b + a + 0;
    produce cout:
    pass ~carry;
 
    sum := sum + carry;

end half_adderendmodule
