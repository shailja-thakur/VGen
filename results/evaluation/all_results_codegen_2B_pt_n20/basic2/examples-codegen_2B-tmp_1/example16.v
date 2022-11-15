// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

and_gate input_a, input_b, output_out;

// initialize the wires

primary_wire in_a = a;
primary_wire in_b = b;

// wire from out_a to output_COMP_1

wire comp_1;

// Constraints: (out_COMP_1 {out.value} pulsewidth_COMP_1) is approximately log_weave


FROM_WIRE(in_a,'Compound:', $L_IN);
FROM_WIRE(in_b,'Compound:', $L_IN);
MULTIPLY_BY_TWO (in_a);
MULTIPLY_BY_TWO (in_b);
ADD(in_a, in_b);
log_weave(.1);
ADD(pc, in_a);
endmodule
