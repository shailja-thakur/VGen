// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign( out, $and( a, b ) );
        
ignore_gate( 
    input destroy_a, 
    input destroy_b, 
    line_assignments line_assignments, // the top object in the module graph
    input push_a, 
    input push_b;   
    );

    // apply either exit_gate or ignore_gate, whichever occurs.
    out -> exit_gate( destroy_a, destroy_b );

exit_gate ( 
    input destroy_a, 
    input destroy_b, 
    line_assignments line_assignments, // the top object in the module graph
    input push_a, 
    input push_b;   
    ) { 
        // exit gate
        if ( a or b ) {
            // Note: you cannot simply destroy thisendmodule
