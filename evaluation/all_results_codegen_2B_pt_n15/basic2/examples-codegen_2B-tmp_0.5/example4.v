// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    and_gate( a, b, out )
    {
    }

// design an AND gate class
class and_gate_class : public and_gate
{
    // assign the AND of a and b to out in the constructor
    and_gate_class( 
        input a, 
        input b, 
        output out ) : and_gate( a, b, out )
    {
    }
};

// design a module that implements an OR gate
module or_gate( 
    input a, 
    input b, 
    output out );

    // assign the OR of a and b to out in the constructor
    or_gate( a, b, out ) : or_gate( a, b, out )
    {
    }

// design an OR gate class
class or_gate_class : public or_gate
endmodule
