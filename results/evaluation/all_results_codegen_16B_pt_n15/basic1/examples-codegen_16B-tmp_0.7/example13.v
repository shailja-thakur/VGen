// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign( input in, wire out );

// Create a 2 bit counter that starts at 0 and increments on clock
module counter( input clk, output rst, output out );
// Assign the output of each cell to the inputs of the next
module counter( input clk, wire [2] out, input rst );
// Use a reset to set the counter back to 0
module counter( input clk, input rst, wire [2] out );
// Use a reset to set the counter back to 0
module counter( input clk, input rst, wire [2] out );

// Create a 2 bit counter that starts at 0 and increments on clock
module counter( input clk, output rst, output out );
// Assign the output of each cell to the inputs of the next
module counter( input clk, wire [2] out, input rst );endmodule
