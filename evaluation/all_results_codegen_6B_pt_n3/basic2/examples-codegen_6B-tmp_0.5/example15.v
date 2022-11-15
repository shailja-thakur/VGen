// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    out <= a & b;

module and_gate_2( 
    input a, 
    input b, 
    input c, 
    output out );

    // assing the AND of a and b and c to out
    out <= a & b & c;

module and_gate_3( 
    input a, 
    input b, 
    input c, 
    input d, 
    output out );

    // assing the AND of a and b and c and d to out
    out <= a & b & c & d;

module and_gate_4( 
    input a, 
    input b, 
    input c, 
    input d, 
    input e, 
    output out );

    // assing the AND of a and b and c and d and e to out
    endmodule
