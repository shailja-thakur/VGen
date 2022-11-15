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
    
    // if a and b are true, then out is true
    if ( a && b ) {
        out = 1;
    } else {
        out = 0;
    }
}

// design a module that implements an OR gate

module or_gate( 
    input a, 
    input b, 
    output out );

    // assign the OR of a and b to out

or_gate( 
    input a, 
    input b, 
    output out ) {
    
    // if a or b are true, then out is true
    if ( a || b ) {
        out = 1;
    } else {
        out = 0;
    }
}

// design a module that implementsendmodule
