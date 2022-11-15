// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
//find out the rules 
//uses the afferent logic to consitute the output
//accounts for both case
//Expression Tradition
//Pipeline Position
//accept input and modify only output
//part of pipelined design
//ALamento do comb2

//Comparison of the output of two cases:
// a message using AND of al,b,cin and cin inverted
//b message using AND of bl,a,cin and cin inverted
//answer is in the output reformed into a compact form, so only need to keep first and last bit
//of the same name for comparison

and-gate a1( .al(c), .bold(a), .bout(bint));
and-gate a2( .al(a), .bold(c_inv), .bout(bl_int));
and-gate a3( .al(bl_intendmodule
