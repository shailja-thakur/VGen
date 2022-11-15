// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

input a;
input b;
output out;

and_gate() :
    a( a),
    b( b),
    out( out)
{
}

void and_gate_impl()
{
    out = a && b;
}

int main()
{
    and_gate_impl();
}
endmodule
