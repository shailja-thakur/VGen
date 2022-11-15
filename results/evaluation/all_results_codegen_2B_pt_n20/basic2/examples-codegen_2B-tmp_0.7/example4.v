// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    board code_and_gate( 
        input a, 
        input b, 
        output out 
    );

module and_gate( 
    input a, 
    input b, 
    output out 
){

    wire [3:0] a_wire;
    wire [3:0] b_wire;

    and_gate fm = and_gate;
    and_gate_in a_in = and_gate_in_1;
    and_gate_out a_out = and_gate_out_1;
    and_gate_in b_in = and_gate_in_2;
    and_gate_out b_out = and_gate_out_2;

    // instantiate the module in the design
    and_gate fm_inst = and_gate_instantiate( 
        endmodule
