// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
assign out = in;
// Assign the module's input to a wire
wire port0 = in;
// Connect two modules together
// Module A inputs its output port outputs and is connected to module b's input port
wire_assign A = wire_assign( port0, port2 );
// Module B has inputs and outputs, and is itself connected to module a
module_instance b;
// Connect the module instance's port outputs to some inputs of the adder
instantiate wire_assign( b.port2, port6 );
// The adder does the work
module adder;
instantiate adder( port6, port7, port8, port9 );

// Which port are its parameters coming in on?
wire port0 = in;
// Which wire are they?
wire port5 = port0;
// Which ports of which module are these coming into?
endmodule
