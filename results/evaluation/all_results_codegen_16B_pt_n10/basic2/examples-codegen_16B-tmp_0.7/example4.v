// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign(out, and(a, b));

    // implement the AND gate
    always_comb
    begin
        out <= (a & b);
    end 

endmodule
