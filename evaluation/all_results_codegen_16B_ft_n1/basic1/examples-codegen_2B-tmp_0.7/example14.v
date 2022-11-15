// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

// Assign in = out

module input( input in, output out );
// input takes in, outputs out

module output( input in, output out );
// input takes in, outputs out

module sum( input in, output out );
// input takes in, outputs out

module div( input in, output out );
// input takes in, outputs out

module branch( input in, output out );
// input takes in, outputs out

module compare( input in, output out );
// input takes in, outputs out



// Module declaration
module my_module = wire_assign
                ( sum( in1, in2 ), out );

// Run
run my_module;
endmodule
