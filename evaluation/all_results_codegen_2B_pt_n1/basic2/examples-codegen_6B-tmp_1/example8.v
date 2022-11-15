// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
out <= and( a, b );
----------------------------

and_gate : {

    enum state {
        s0 = 0,            // initial state
        s1,                  // And gate state 1
        s2                   // And gate state 2
    };
 
    state prev_state;   // Previous state;

    always @(posedge clk)
    begin        
        prev_state <= state;
        if (a == 1 && b == 1)
		        state <= s1;
        else
            state <= s0;
    end
    
    generate
        state_member( s0 )
    end
}



module or_gate( 
    input a, 
    input b, 
    output out );

    generate 
        AND( ~a, ~b, out )
    end


module mux(endmodule
