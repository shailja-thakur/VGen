// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
#include <iostream>
int
main()
{
	int x = 0; // define x
	int y = 0; // define y
	int result; // define result
	// assign y to x
	wire wire_assign_x( x, &x ); // assign x to x
	wire wire_assign_y( y, &y );  // assign y to y
	// assign y to x
	wire wire_assign_z( &result, &result ); // assign z to z
	// assign y to x
	// assign x to y
	wire wire_assign_out( &result, &result );
	// assign out to in
	std::cout << "Wireassign " << std::endl;
	std::cout << "assign x from in: "
	          << wire_assign_x( inendmodule
