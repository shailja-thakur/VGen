// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

 // the gateway table
 // indicates inputs and output ports
parameter G = 2'b10;
assign out = G; // the edge triggered set-up and hold gfed_reg
assign xor_out = G + a ^ b; // performs the XOR operation between inputs 
and gatea(a, b, xor_out); // calling the XOR Gate
endmodule
