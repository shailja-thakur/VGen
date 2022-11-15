// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign_out_to_in( input in, output out );

// A module that sends the signal out to the next module
module wire_send( input out, output in );

// A module that sends the signal out to the next module
// The next module is the module with the next output port
module wire_send_out_to_next( input out, output in );

// A module that receives the input from the next module
module wire_receive( input in, output out );

// A module that receives the input from the next module
// The next module is the module with the next output port
module wire_receive_from_next( input in, output out );

// A module that passes the signal through
module wire_passthrough( input in, output out );

// A module that passes the signal through
// The next module is the moduleendmodule
