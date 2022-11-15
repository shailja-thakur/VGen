// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    and_gate( 
        input a, 
        input b, 
        output out ) {
        
        // if a is true, then out is true
        if ( a == true ) {
            out = true;
        } else {
            // else, if b is true, then out is true
            if ( b == true ) {
                out = true;
            } else {
                // else, out is false
                out = false;
            }
        }
    }

// end and_gate

// Design a module that implements an OR gate

module or_gate( 
    input a, 
    input b, 
    output out );

    // assign the OR of a and b to out
    or_gate( 
        input a, 
        input b, 
        output out ) {
        
        endmodule
