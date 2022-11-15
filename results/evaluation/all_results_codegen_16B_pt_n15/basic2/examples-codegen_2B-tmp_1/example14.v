// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out.
    always_comb_assert( out );
}

/* 1.1.5: Let´s generate the circuit
*/

and_gate(a,b,out);

/* 1.1.6: Let´s check the results
*/

//design->get_vscc();

// Get the result of the design

assert( (atl::T)out );
endmodule
