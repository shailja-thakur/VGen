// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign output@input in(gate_xor, o_out, in);
"""
    print "*" * 80
    for src, dst in _.*+; print src, "@", dst

    with open("m.v") as output_file:
        for line in output_file:
            print line.strip()

if __name__ == "__main__":
    main()
endmodule
