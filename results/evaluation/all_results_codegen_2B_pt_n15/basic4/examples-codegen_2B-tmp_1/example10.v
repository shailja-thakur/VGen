// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 

work dut;

// Inputs are as follows:
// a BC_ID = 4
// b BC_ID = 6
// a = 3
// b = 4

main
{
	dut assert [4:0];

	assert {a=TEST0,b=TEST1,sel=0};

	out = a;
	a = b;
	b = a;
	a = out;
	out = b;

	assert {a=TEST2,b=TEST3,sel=1};
	out = a;
	a = b;
	b = a;
	a = out;
	out = b;

	assert {a=TEST4,b=TEST5,sel=2};
	out = a;
	a = b;
	b = a;
	a = outendmodule
