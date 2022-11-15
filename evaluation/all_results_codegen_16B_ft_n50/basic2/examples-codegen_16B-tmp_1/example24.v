// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
specify
$setuphold (posedge a, negedge b, 1ns, 1ns, notifier);
$width (negedge a, 1ns, 0, notifier);
$width (negedge b, 1ns, 0, notifier);
endspecify

// design implementation
// statement A and B
not (C, a);
and (out, C, b);

endmodule
