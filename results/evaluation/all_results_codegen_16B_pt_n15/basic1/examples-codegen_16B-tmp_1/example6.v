// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign( in, out );
// assign out to whatever is at the input port in
module wire_assign( inout, out );
// assign the output to the input
module wire_assign( in, inout );


// Design and iterate through assignment of module wires
local wire assign = wire_assign;
module net {
    input clk,
    input a,
    input in,
    input inout,
    output out;

    assign[a]; // Assign clk to a
    assign[in] = a; // Assign a to in
    assign[inout] = clk; // Assign clk to inout
    assign[out] = clk; // Assign clk out to out
}

xilinx::time 200;

local net test_net = net( );

endmodule
