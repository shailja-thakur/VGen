// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    and_gate( 
        $a, 
        $b, 
        $out ) :- 
    ( 
        $a = 1, 
        $b = 1, 
        $out = 1 
    )
    
endmodule
