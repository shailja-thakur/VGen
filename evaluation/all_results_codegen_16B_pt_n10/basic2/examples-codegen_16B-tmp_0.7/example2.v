// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign( out, and_gate );

    // define a process to perform the AND of a and b
    process and_gate {

        while ( true ) {
            wait();
            if ( a > 0 && b > 0 ) {
                out = 1;
                break;
            } else if ( a < 0 || b < 0 ) {
                out = 0;
                break;
            }
        }
    }
endmodule
