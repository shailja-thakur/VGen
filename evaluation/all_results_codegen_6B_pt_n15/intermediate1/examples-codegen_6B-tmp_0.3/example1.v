// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder_gate( 
input a, b,
output cout, sum )
{
    cout = a + b;
    sum = (a & b) | (cout & 0x8000);
};

function half_adder_gate_inv( 
input a, b,
output cout, sum )
{
    cout = a - b;
    sum = (a & b) | (cout & 0x8000);
};

function half_adder_gate_inv2( 
input a, b,
output cout, sum )
{
    cout = a - b;
    sum = (a & b) | (cout & 0x8000);
};

function half_adder_gate_inv3( 
input a, b,
output cout, sum )
{
    cout = a - b;endmodule
