// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign( in, out );


// Module instantiation
// See the user guide for details on configuring your module
module my_adder( input a, input b, output sum, output carry, input clr );

// Add two numbers and carry
wire sum, carry;

wire clr;
wire_assign( clr, carry );

// Add logic
wire_assign( a, sum );
wire_assign( b, carry );

wire_assign( sum, a );
wire_assign( carry, b );

wire_assign( sum, sum + carry );

wire_assign( carry, sum < 16 ? 0 : 1 );

// Assign outputs
wire_assign( sum, sum + carry );
wire_assign( carry, carry == 0 ? 0 : 1 );

// Assign outputs to wires
endmodule
