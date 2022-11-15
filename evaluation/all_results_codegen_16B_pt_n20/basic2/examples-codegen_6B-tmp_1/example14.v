// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    always@(posedge clk) begin
        if(a_enable) out <= a & b;
    end


endmodule
