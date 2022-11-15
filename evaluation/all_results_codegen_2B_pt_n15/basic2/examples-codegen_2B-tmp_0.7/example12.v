// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

and_gate::and_gate( 
    input a, 
    input b, 
    output out ) :
    gate( out ),
    a( a ),
    b( b )
{
}

void and_gate::eval()
{
    out = a && b;
}


// Design a module that implements a NAND gate.

module nand_gate( 
    input a, 
    input b, 
    output out );

    // assign the NAND of a and b to out

nand_gate::nand_gate( 
    input a, 
    input b, 
    output out ) :
    gate( out ),
    a( a ),
    b( b )
{
}

void nand_gate::eval()
{
    // output = !( a || b )endmodule
