// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

int main( )
{

    // Declare an input and output wire
    wire_t in, out;

    // Wire in and out
    in = 1;
    out = in + 4;

    // Write the value of out to the screen
    out.write( out );
    out.write( out );
    out.write( out );
    out.write( out );
    out.write( out );
    out.write( out );
    out.write( out );

    return 0;

}
endmodule
