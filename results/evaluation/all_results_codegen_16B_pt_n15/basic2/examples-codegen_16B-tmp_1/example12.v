// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    // Use two for loop to implement this gate
    for ( int i = 0 ; i < 1 ; i++ ) {
        out = a;
        wait(); 
        for (int j = 0; j < 1; j++ ) {
            out = b;
            wait(); 
        } 
        out = a && b;
        wait(); 
    }

    // Use three for loop to implement this gate
    for ( int i = 0 ; i < 1 ; i++ ) {
        out = a;
        wait(); 
        out = b;
        wait(); 
        out = a && b;
        wait(); 
    }

    for ( int i = 0 ; i < 1 ; i++ ) {
        out = a;
        wait(); 
        out = b;
        wait(); 
        out = a && b;endmodule
