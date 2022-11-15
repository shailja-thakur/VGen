// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

	always( cout ) & half_adder( a, b, cz_carry, sum );

	always_comb
		input a,b,cout;
		iassign( (sum >> 16), a, output );
		iassign( (sum >> 8), b, output );
		iassign( (sum), c, output );
		iassign( (cz_carry), (carry) );


source dirun is 16 bits wide;

SYNC_FNS =
"// Gen is the functional core generation module.\r\n"
"\t//\r\n\r\n"
"// <<< terminals >>>\r\n"
"\t// You can connect any terminal to this syntactic block here.\r\r\n"
"\t// (Note '>>>' means we are in non-default mode of 'range'.endmodule
