// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out - out should not be a register

and_gate::and_gate( 
    input a, 
    input b, 
    output out ) {    

    /*
    This circuit::

    ILO = two inputs a and b are connected with place indicators i and j

    OULO = i LAND j; the logic of two inputs and output should be in one place

    */

    inputs.push_back( a ); 
    inputs.push_back( b ); 
    outputs.push_back( out );

}


/*
Initial values of the input:
    x = 0 
    y = 1

Initial values of the output: 
    z = 0 
*/

int main() {

    input x; 
    x.set_value( 0 );
    
    glo.set_value( 1 );
endmodule
