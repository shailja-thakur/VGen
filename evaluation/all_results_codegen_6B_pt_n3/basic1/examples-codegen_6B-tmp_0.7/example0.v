// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign_out_to_in( input out, output in );
// assign out to in, but reverse the direction
module wire_assign_in_to_out( input in, output out );

// A module that reverses the state of the output
module wire_reverse( output out, input in );
// reverse the output
module wire_reverse_out_to_in( output out, input in );
// reverse the output, but reverse the direction
module wire_reverse_in_to_out( input out, output in );


// The A module:
// 1. Connects to a counter module
// 2. Connects to a latch module
// 3. Connects to an input module
// 4. Connects to a mux module, with the shift register
// 5. Connects to a mux module, with the counter
// 6. Connects to anendmodule
