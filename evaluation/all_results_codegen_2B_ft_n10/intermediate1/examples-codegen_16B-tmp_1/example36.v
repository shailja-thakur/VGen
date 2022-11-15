// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
assign sum = a ^ b; //SUM will hold the binary addition of A and B
assign cout = (a && b);// CON will hold the binary addition of B and Cin
endmodule
