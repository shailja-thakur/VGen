// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
// Fulladdin structural design
// assign cout = (a&b)cross Add1 | (a&c)cross Add1 | (b&c)cross Add1;
assign cout= (!(a^b)&(a^c)) | (!(a&b)&(b&c));
assign sum= a^b^c;
endmodule
