// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

in and( )          // <creator>
    device and_gate<b>;

out test_and( );

subroutine logic and_test(
    b );

    // return true iff a AND b is true.

    // simulate the effect of the AND gate
    //    if(a) then_true = true else_false = false
    //    S0 internal = S0 S1 internal = S0 + S1

    wire prec_and, in2, in1, logic_out;
    
in     a<in1<...{19, 0}\>;
in     b<in2<...{19, 0}\>;
out    #connect "logic_out" <- "out"
on S0\:source = not prec_and, S1\:source = not in1, not in2
    on S0endmodule
