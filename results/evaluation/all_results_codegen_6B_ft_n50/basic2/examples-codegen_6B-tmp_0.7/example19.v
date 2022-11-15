// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
//internal nets
wire c;

// instantiate the nand module
nand #(5) n1(.a(a), .b(b), .out(c)); //specifying the number of 
//pins to be connected to output

assign out = c; //output should be connected to output of nand
 
endmodule
