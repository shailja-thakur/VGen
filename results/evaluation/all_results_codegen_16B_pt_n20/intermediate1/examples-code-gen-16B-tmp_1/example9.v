// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
 wire s, c;
 // Construct and-or network
 or_gate mos1(c, a, b); //c = a or b
 nand_gate nmos1(s, a, b); //s = not (a and b)
 wire temp;
 cmos cmosstage( cout, temp, c, s );
 not_gate nmos2( sum, temp);
endmodule
