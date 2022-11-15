// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign_reverse( input in, output out );

// =============================================================================
// Implementation
// =============================================================================

class wire_assign_test
{
	public:
		void run()
		{
			// test assignment
			wire_assign wire_assign_obj = wire_assign( in, out );
			wire_assign_reverse wire_assign_reverse_obj =
				wire_assign_reverse( in, out );

			// test the assignment
			if (wire_assign_obj.wire_assign_forward() != out)
			{
				std::cout << "Error: wire_assign.wire_assign_forward" << std::endl;
				return;
			}
			if (wire_assign_reverse_obj.wire_assign_reverse() != in)
			{
				stdendmodule
