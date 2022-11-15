// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
prior s1	s2	s3	pos = in;
begin
	// If we don't have any of the inputs, tristate everything wide and we'll just leave
	// the output level at zero. This is even faster.
	when( in='1')	s1 = '1';
	when( in='0')	s1 = '0';
	when( in=='1' && reg[1]=='0' && reg[0)	s1 = '0';
	when( in=='1' && reg[1]='1')	s1 = '0';
	when( in=='0' && reg[1]=='1' && reg[0)	s1 = '0';
	when( in=='0' && reg[1]=='0')	s1 = '1';
	when( in=='end
endmodule
