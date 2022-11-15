// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

// design module that prints the output
module print_output( input in, output out );
// print out the output

// combine the print_output and wire_assign modules
module clock( input [3:0] clk_in, output [7:0] out_wire );

// create a clock module using the wire_assign module
module clock_wire_assign( input clk_in, output out_wire );

// create a clock module using the print_output module
module clock_print_output( input clk_in, output out_wire );

module top( input [3:0] clk_in,
           output [7:0] out_wire,
           output [3:0] out_wire_clk_in,
           output [7:0] out_wire_clk_in,
           output [7:0endmodule
