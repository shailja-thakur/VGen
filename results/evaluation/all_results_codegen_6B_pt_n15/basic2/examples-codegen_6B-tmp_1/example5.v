// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
node has_and_gate( 
    and_gate input, 
    constant on, 
    out logic out) {

        and_gate and = input;
        if (on) {
            and = new and_gate();
        }

        assign( and.out, and.a );
        assign( and.out, and.b );
        assign( out, and.out );
}


module main() {
    // put variable declarations in a function module
    and_gate and_gate_instance;
    output same_and_gate;

    // configure and_gate for which output same_and_gate
    same_and_gate.module("same_and_gate", and_gate_instance);
}


endmodule
