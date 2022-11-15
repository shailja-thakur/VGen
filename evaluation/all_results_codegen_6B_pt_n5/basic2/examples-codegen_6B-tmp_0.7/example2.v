// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    always @(posedge clk or negedge rst) begin
        if(rst == 1) begin
            out <= 0;
        end
        else if(a == 1 and b == 1) begin
            out <= 1;
        end
        else begin
            out <= 0;
        end
    end


module or_gate( 
    input a, 
    input b, 
    output out );

    // assing the OR of a and b to out
    always @(posedge clk or negedge rst) begin
        if(rst == 1) begin
            out <= 0;
        end
        else if(a == 1 or b == 1) begin
            out <= 1;
        end
        else begin
            out <= 0;
        end
    end


module xor_gate( 
    inputendmodule
