// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    and_gate and_gate ( 
        a,      // inputs
        b,
        out    // outputs
        
    );

// Now implement the module 
sc_signal<bool> a, b;
sc_signal<bool> out;
and_gate and_gate_instance( a, b, out );

include("verilog_a.vh")
verilog_a_instance verilog_a_instance_instantiation;

void sc_main( sc_core::sc_start_of_simulation_clock  clock ) 
{
    while ( sc_time_stamp() < clock ) {
        out = a and b;
    }
}

endmodule
