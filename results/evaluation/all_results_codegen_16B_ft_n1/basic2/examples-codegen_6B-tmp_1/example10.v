// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
out <= and_gate(a,b);

	// The gate's initial state contains both bits of a and b
out_state <= not(a[2:0]) & not(b[2:0]);

endmodule
