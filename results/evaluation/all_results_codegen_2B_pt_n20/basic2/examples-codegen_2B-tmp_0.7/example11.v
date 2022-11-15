// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    // out: output of AND gate
    void process() {
    out = a && b;
}

void and_gate() {
    vector< and_gate > and_gate_list;
    and_gate_list.push_back( and_gate( input_a, input_b, output_out ) );
    and_gate_list.push_back( and_gate( input_a, input_b, output_out ) );
    and_gate_list.push_back( and_gate( input_a, input_b, output_out ) );
    and_gate_list.push_back( and_gate( input_a, input_b, output_out ) );
    and_gate_list.push_back( and_gate( input_a, input_b, output_out ) );
    and_gate_list.endmodule
