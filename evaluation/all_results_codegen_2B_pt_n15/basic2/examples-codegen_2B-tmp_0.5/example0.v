// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

module and_gate( 
    input a, 
    input b, 
    output out )
{
    wire [1] ina;
    wire [1] inb;

    // assign a and b to inputs
    ina = a;
    inb = b;

    // assign the result to the output
    out = ina & inb;
}

// design the module

and_gate( 
    input a, 
    input b, 
    output out )
{
    // assign the input to the input wires
    ina = a;
    inb = b;

    // assign the result to the output
    out = ina & inb;
}
endmodule
