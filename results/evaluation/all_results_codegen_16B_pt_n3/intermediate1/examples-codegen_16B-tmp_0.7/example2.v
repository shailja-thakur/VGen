// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
        
// The core of the half adder.
module core(
input a, b,
output sum);

// The output latch.
module latch(
input a, b, sum,
output out);

reg a, b;
wire cout, sum;

core( a, b, sum )
    sum = a + b;
    
latch( a, b, sum, cout )
    if (a or b or sum)
        cout = 1;
    else
        cout = 0;

half_adder( a, b, cout, sum )
    sum = a + b;
    
endmodule
