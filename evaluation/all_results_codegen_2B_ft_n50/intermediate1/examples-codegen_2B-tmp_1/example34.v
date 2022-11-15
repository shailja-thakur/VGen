// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum ); 
wire c1,c2;
half_adder_pipe
#(.WIDTH(1))
ha1 ((a&b),(c1&c2),sum,cout);
endmodule
