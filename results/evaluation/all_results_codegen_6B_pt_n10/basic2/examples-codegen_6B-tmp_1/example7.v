// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign out = and( a, b );

// File name: and_gate-05.mos
// Author: Aven Bross
// Date created: 16/10/17
// Date last modified: 16/10/17
// Description: Module and_gate-05:

//

// Constructor: and_gate - exec()
// Produces an object.
and_gate::and_gate( 
    input a, 
    input b, 
    output out ) : mos::object() {
    // Assign out as the output signals
    out_in = out;

    // Assign dslot_a as being connected to input a
    a_connect = a;

    // Assign dslot_b as being connected to input b
    b_connect = b;

}

// Destructor: and_gate - no exec()endmodule
