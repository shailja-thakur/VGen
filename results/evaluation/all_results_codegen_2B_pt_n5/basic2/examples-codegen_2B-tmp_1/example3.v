// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    void and_then(
        random_comb overwrite, out &out);

    // do something that mixes a and b
    void and_driver(
        random_comb overwrite,
        random_seed_generator random);


    // and_driver(b);
    // and_driver(a);
endmodule
