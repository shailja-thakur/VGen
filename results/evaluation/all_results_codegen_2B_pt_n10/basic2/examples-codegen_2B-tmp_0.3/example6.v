// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    and_gate( 
        a, 
        b, 
        out );

//**************************************************************************
//*
//*   main
//*
//**************************************************************************

int
main( int argc, char* argv[] )
{
    and_gate a( 0, 1, 0 );
    and_gate b( 1, 0, 1 );
    and_gate out( 0, 0, 0 );

    a.out = &out;
    b.out = &out;
    
    a.run();
    b.run();

    return 0;
}
endmodule
