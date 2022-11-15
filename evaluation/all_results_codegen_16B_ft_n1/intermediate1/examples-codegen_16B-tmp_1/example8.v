// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
//Implement the logic in full_adder, but with a parameter that characterizes the width of the adder
assign {cout, sum} = a+b;
endmodule
