// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign out = a && b;

/*
    // design an AND gate as a function
    function and_gate( 
        input a, 
        input b, 
        output out );

    // assign the AND of a and b to out
    out = a && b;
*/

// design an AND gate as a class
class and_gate( 
    input a, 
    input b, 
    output out )
{
    /*
        // for describing the class
        public function and_gate( 
            input a, 
            input b, 
            output out );

        // assigns the AND of a and b to out
        out = a && b;
    */
}
endmodule
