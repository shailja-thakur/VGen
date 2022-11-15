// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    and_gate( a, b, out ) : and_gate( a, b ) {
    }

#include "main.h"

int main(int argc, char *argv[]){

    // Input values of A and B
    int a = 1;
    int b = 2;

    // Output b
    int out = 0;

    // Create and_gate with inputs a and b
    and_gate and( a, b, out );

    // Create and_gate with inputs a and b
    and_gate and( a, b, out );

    return 0;
}

endmodule
