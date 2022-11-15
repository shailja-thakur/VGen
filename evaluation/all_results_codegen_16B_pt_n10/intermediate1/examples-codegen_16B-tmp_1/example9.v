// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
    
connection { port: cout; signal: sum; }

*in {port : a; signal : sum;}
*in {port : b; signal : sum;}





half_adder( a, b, cout )
half_adder( b, a, cout )
endmodule
