// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

reg a, b, sum;
reg a_in, b_in, sum_in, c_in;

initial begin
b_in = b;
sum_in = sum;
a_in = a;
sum = 0;
end else cout = 1;

always b_in = b_in + 1;
always a_in = a_in + 1;
always c_in = &sum_in + 1;

always // a's algorithm specified as below:
//            {                      and                        {
//            {                            &&                        {
//            ((!a) && (!b))      && ((~(a|b)) ||  (a&b))     && ((a)|(b))                     } } }

#define A {  if(a==0){sum = b; } else {  if( b == 0 ){sum = a;}endmodule
