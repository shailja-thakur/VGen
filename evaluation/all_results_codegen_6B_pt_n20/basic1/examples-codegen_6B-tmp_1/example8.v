// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
----------
// Compile and run the module.
module r_assign( input in, output out ) {
    assign( out, in );
}

endmodule
