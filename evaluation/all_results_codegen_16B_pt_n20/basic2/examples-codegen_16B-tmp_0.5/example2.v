// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign( out, and_gate( a, b ) );

    // implement the logic of the AND gate
    always @(posedge clk)
    begin
        if (a)
        begin
            out <= b;
        end
    end

endmodule
