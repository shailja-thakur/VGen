// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

input in;

output out;

module impl()
{
    print("AND without masking TEST");
    in(a);
    in(b);
    out(a & b);
}

endmodule
