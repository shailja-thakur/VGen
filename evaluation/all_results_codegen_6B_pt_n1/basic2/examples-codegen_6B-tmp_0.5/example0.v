// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    always @(posedge clk)
    out <= a & b;


module and_gate_tb( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    always @(posedge clk)
    out <= a & b;


// --------------------------------------------------------
// code generation
// --------------------------------------------------------

// --------------------------------------------------------
// compile time checks
// --------------------------------------------------------

// --------------------------------------------------------
// user visible functions
// --------------------------------------------------------

void test_and_gate( int a, int b, int c, int d );

void test_and_gate_tb( int a, int b, int c, int d );

// --------------------------------------------------------
// internal functions
// --------------------------------------------------------

// --------------------------------------------------------
// end of file
// --------------------------------------------------------
endmodule
