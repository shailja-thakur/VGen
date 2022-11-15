// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
assign {cout, sum} = a + b;
initial a =1'b1;
initial b = 1'b0;
endmodule
