// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    always @(posedge clk or negedge rst) begin
        if ( rst ) begin
            out <= 0;
        end
        else begin
            out <= a & b;
        end
    end

endmodule
