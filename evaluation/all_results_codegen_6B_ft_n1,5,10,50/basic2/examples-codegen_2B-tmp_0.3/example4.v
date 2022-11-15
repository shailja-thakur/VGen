// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    and_gate( a, b, out ) {
    
    // if a is true
    if (a) {
        // assign b to out
        out = b;
    }
    // if b is true
    else {
        // assign a to out
        out = a;
    }
}

// design a module that implements an OR gate

module or_gate( 
    input a, 
    input b, 
    output out );

    // assign the OR of a and b to out
    or_gate( a, b, out ) {
    
    // if a is true
    if (a) {
        // assign b to out
        out = b;
    }
    // if b is true
    else {
        // assign a to out
        out = a;
    }
}

// designendmodule
