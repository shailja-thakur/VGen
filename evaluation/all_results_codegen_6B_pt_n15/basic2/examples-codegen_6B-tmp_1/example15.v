// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out based on the carry return 
    // from the modular AND of a and b 
    always @(posedge clk or negedge rst) begin
        if (rst <= 0 ) out <= 0;
        else if(clk <= 0) out <= a & b;

    end
endmodule
