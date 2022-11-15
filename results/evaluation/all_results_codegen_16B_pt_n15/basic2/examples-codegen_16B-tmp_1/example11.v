// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign out = ( a and b );


///////////////////////////////////////////////////////////////////////////////
//FILE AND_DOC.cpp
//
//      Demonstrates some features of the FATSL module design stage
//
//      The "and_gate" module computes the AND of the given inputs and
//      stores the resulting value in the output variable
//
//      This is the 660-2085.
//
/////////////////////////////////////////////////////////////

#include <stdio.h>
#include <time.h>
#include <stdlib.h> //for rand(), srand()

/////////////////////////////////////////////////////////////
int main(void)
{
    //initialize the generator with a real seed
    srand( time(NULL) );

    //variable to hold the value computed by the module
    bool result;

    //variable to hold the values a and b input by the user
    endmodule
