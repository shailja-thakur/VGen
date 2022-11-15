// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
    wire_assign.in( in );
    wire_assign.out( out );
// create some signals and connect them
    input sig_out( 1 );
    input sig_in( 4 );
// Connect the wires
    wire_assign.fill( 1 );
    wire_assign.connect( sig_out, sig_in );
//Now test whether out equals 4
    cout << sig_out << endl; // should print 1
    cout << start_block() << "Now test whether out equals 4" << endl;
    cout << sig_in << endl; // should print 4

endmodule
