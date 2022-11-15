// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign( in, out );
""")

test.write('wire_assign.v', r"""
module wire_assign
(
    input in,
    output out
);

initial
    wire_assign.v
    assign out to in;
endmodule
