// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Outputs the sum of inputs.
function sum()
{
    var sum = a + b;
    cout = sum;
}

// Outputs the carry-out of the half adder.
function carryout()
{
    var sum = a + b + carryout;
    cout = sum;
}

// Outputs the carry-out of the half adder, shifted by one.
function carryout_shift()
{
    var sum = a + b + carryout_shift;
    cout = sum;
}

// Outputs the carry-out of the half adder, shifted by two.
function carryout_shift_2()
{
    var sum = a + b + carryout_shift_2;
    cout = sum;
}

// Outputs the carry-out of the half adder, shifted byendmodule
