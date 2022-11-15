// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

// Design a module that assigns the output to the input
module wire_assign2( input in, output out );
// assign out to in

// Design a module that assigns the output to the input
module wire_assign3( input in, output out );
// assign out to in


module assigner( in, out );
    wire out_wire;
    assign out_assigner( in, out_wire );

    wire out_wire2;
    assign out_assigner2( out_wire2, in );

    wire out_wire3;
    assign out_assigner3( out_wire3, out_wire2 );

    assigner( in, out );

// Wire assignment phase
// 1. Collect input wires and assign to output wires
// 2. Update the output wires
// 3. Wire assignment returns the updated output wiresendmodule
