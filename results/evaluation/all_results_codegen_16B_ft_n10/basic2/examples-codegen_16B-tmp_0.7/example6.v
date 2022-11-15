// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
specify 
	specparam N = 1;
	specparam n = 1;
	specparam out = 1;
endmodule
