// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

    // implement the functions for gate:
    // function gate:
    //    @a = a value
    //    @b = b value
    //    @out = out value
    void (*gate)(input, input, output)=( 
        input a, 
        input b, 
        output out);

    // evaluate the gate:
    void (*eval)(input); 
                    // where @a and @b are evaluated
                    // @out is set to whatever is the too value
    // constructors
    and_gate(void(*, *)(input, input, output)) = 
        gate(this, gate);

    and_gate( 
        void(*, *)(input, input, output),
        eval
    );

/**** TESTING ***/

    and_gate( 
        int a, 
        int b, 
        intendmodule
