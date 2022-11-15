// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    // the function returns true if the AND is true
    // returns false otherwise

module and_gate( 
    input a, 
    input b, 
    output out ) {

    wire  [1:0]  x;

    always @(posedge a)
    begin 
        if (a)
            out <= 1'b1;
        else
            out <= 1'b0;
    end

    always @(posedge b)
    begin 
        if (a)
            x <= b;
        else
            x <= 0;
        if (x)
            out <= 1'b1;
        else
            out <= 1'b0;
    end
}
endmodule
