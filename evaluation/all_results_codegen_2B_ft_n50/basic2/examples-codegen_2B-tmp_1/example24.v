// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
fand output fand;

invert input1(a,w0);
invert input2(b,w1);
invert input3(w0,w0);
nand_agonist context_charged(w1, w0, w0, w1, w0);
nand_num(r0, w1, w1, w1, w1, w1);
nand_num(r1, w0, w0, w0, w0, w0);

assign fand = w0&w1;

endmodule
