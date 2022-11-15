// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a[2], b[2];
output cout;
input sum;

`

var halfAdder = func( blocks ) {

	var a = blocks.getInput( "a" );
	var b = blocks.getInput( "b" );
	var cout = blocks.getOutput( "cout" );
	var sum = blocks.getOutput( "sum" );

	var c = blocks.newInstance( "c", "adder", {
		a: a,
		b: b,
		cout: cout,
		sum: sum
	} );

	c.setInput( "a", 0 );
	c.setInput( "b", 1 );

	c.setOutput( "cout", 0 );
	c.setOutput( "sum", 1 );
}

module.exports = halfAdder;endmodule
