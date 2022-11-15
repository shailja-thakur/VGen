// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    always @(posedge clk or negedge rst) begin
        if( rst == 0 )
            out <= 0;
        else if( a == 1 and b == 1 )
            out <= 1;
        else
            out <= 0;
    end
endmodule
