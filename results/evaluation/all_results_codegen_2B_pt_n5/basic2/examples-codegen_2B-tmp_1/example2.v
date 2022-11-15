// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
wrapper( 
    and_gate( 
        input a, 
        input b, 
        output out ) ) ~= 
    function = process(); // when done it should invoke process.
endmodule
