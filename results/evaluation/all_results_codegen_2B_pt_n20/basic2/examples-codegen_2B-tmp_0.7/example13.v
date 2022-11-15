// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

task and_gate(
    input a, 
    input b, 
    output out ) begin
    out <= (a and b);
end

// Design a module that implements a XOR gate

module xor_gate( 
    input a, 
    input b, 
    output out );

    // assign the XOR of a and b to out

task xor_gate(
    input a, 
    input b, 
    output out ) begin
    out <= (a xor b);
end

// Design a module that implements an OR gate

module or_gate( 
    input a, 
    input b, 
    output out );

    // assign the OR of a and b to out

task or_gate(
    input a, 
    input b, 
    output out ) begin
    end
endmodule
