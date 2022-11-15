// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
// Note: this can be done with only one if statement, but this works better for me
function wire_assign( input in, output out ) {
    out = in;
}

# The following is a simple assignment
var x = 3;
var y = 2;

// Assign x to y
var an output that is equal to y
wire_assign( x, y );

// Assign y to x
var an output that is equal to x
wire_assign( y, x );

# Assign x to itself
var an output that is equal to x
wire_assign( x, x );

// Assign y to itself
var an output that is equal to y
wire_assign( y, y );

// Assign a to a
var an output that is equal to a
wire_assign( a, a );

//endmodule
