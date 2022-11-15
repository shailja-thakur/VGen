// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign( $output$out, and2( $a$a, $b$b ) );


// ------ Define a hw_convolve module --------
//controller params = { 'num_bits' : 64 };

//modulation params = { 'switch_int' : 2, 'fgp_prob' : 0.5};

//------ Define the api for this design module -------

module_extern api_fp_fgp_conv_enc fp_fgp_conv_enc
( integer index );

// -- initialize --

input init;

// used to create consecutive vars for the names
auto index = 0;

// ------ Define the mind following this design module ------

module and_gate(
    input  a,
    input  b,
    output out
    )
{ 
    int index_1endmodule
