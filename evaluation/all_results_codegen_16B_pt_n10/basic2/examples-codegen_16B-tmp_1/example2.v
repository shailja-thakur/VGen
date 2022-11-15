// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign  ( out,  and_gate( a, b) ) += 2;

    // care of simulation
    always @ (posedge clk )  // check rising edge
        if (a = 1 && b = 1)  // rising edge means a and b are 1
            out <="out";        // output 1


////////////////////////////////////////////////////////////////////////////////
//                           MAIN
////////////////////////////////////////////////////////////////////////////////

int main() 
{
    input       a ( "a" ),
                b ( "b" );
    output      out ( "out" );

    and_gate   ag ( a, b, out );
    
    // Starting configuration for this example
    a = 0, b = 0, out = 0;
    clk = 0; 

    wait( 10 );

    // Block profiling
    simulate( 1000 );
    report( "Number of cycles occuring"endmodule
