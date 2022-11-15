// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout, sum;

begin

sum = a + b;
cout = sum[1:0];

end
"""

def half_adder(a, b, cout, sum):
    sum = a + b
    cout = sum[1:0]
    return cout

def half_adder_test(a, b, cout, sum):
    half_adder(a, b, cout, sum)
    return cout == 0

#print half_adder_test(2, 1, 0, 3)
#assert half_adder_test(2, 1, 0, 3) == True

print half_adder_test(1, 1, 1, 2)
assert half_adder_test(1, 1, 1, 2) == True

print half_adder_test(1, 1, 1,endmodule
