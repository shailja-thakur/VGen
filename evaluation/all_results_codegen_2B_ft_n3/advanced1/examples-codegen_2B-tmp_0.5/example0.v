// Design a signed adder that adds two 8-bit 2's complement numbers, a[7:0] and b[7:0]. 

module signed_adder(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 

// The numbers a and b are added to the output s. 
// assign the occurence of the signed overflow of a and b to the output overflow.
// a signed overflow occurs if the most significant bits of a and b are low and the most significant bit of s is high
// a signed overflow may also occur if the most significant bits of a and b are high and the most significant bit of s is low



// Implementation
// First create wires for each input.
// Next a full adder is instantiated.
// The wires for the adder output are connected to the wires for each input.
// The wires for the adder output overflow are connected to the output overflow.

// The implementation of the full adder is similar to the implementation of the unsigned adder.
// The only difference is the use of the 'assign' statement to assign the output to the output wire.
// The 'assign' statement only needs to be used once.
// The 'assign' statement is a clause in Verilog, a statement is a way to break up a line of code into multiple parts.
// Each part is separated by a semicolon.
// Each part is separated by a newline.
// The 'assign' statement connects the output of the adder to the output of the circuit.
// The implementationendmodule
