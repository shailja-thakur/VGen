// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
not (a2b,a); // form a compliment of value of a
xor (half,a,b); //Hi. 
xor (result1,half,a); // Lo
 or (cout,result1,half); // (a^b)^half
endmodule
