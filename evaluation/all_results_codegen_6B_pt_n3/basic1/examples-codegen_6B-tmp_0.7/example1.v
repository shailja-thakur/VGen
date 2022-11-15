// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign( input in, output out ) {
    out <= in;
}

// Example showing how to use wire_assign.
// The logic is the same as the original module.
// Since the output is connected to the input, we don't need a
// wire_assign module in the top level.

module top( input in, output out ) {
    out <= in;
}

module main() {
    top t;

    output o = t.out;
    input i = t.in;

    wire_assign w;
}

`
endmodule
