// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
void wire_assign( input in, output out )
        = in;

// Ditto, but with a different name
module wire_assign2( input in, output out )
        = in;

// And a couple of output ports
module wire_assign3( input in, output out0, output out1 )
        = in;

// assign out0 to in
void wire_assign3( input in, output out0, output out1 )
        = out0;

// assign out1 to in
void wire_assign3( input in, output out0, output out1 )
        = out1;

// This module is a pass-through
module wire_assign4( input in, output out )
        = in;

// This module is a pass-through with a different name
module wire_assign5( input in,endmodule
