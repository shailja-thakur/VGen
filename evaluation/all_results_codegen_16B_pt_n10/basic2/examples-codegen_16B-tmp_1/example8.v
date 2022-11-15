// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign ( $out , 45.0 ) + ( $a , 65.0 ) + ( $b , 55.0 );  

    // report logic levels
    report $a;
    report $b;
    report $out;
"""


# Parse the Verilog code
ast, error = parser.parse_expr( andgate_vlog )
if error:
    print(error)
    exit(1)

# Create a CDR pipeline
mem = DDR3_CDR()
module = and_gate(
                ast.get_symbols(), 
                ast,
                opt.outdir + 'and0.v',
                CE = 8,
                BBAOO=iter([BBAOOF, BBAOOF_in, BBAOOF_out, BBAOOF_dout]),
                width = 36 )
endmodule
