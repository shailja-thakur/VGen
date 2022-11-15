// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    ensure
    out = a & b;

Note that the AND gate assigns the 'short-circuit' bit 
on the output side. The first gate is logically ANDed 
with the second. 0x00 will always be assigned to the output 
(eg:  0b10 = true, 0b00 => false 
and true | true = true)

module and_gate_skeleton( 
    input a, 
    input b, 
    output out );

    // assign values from the inputs to the output 
    assign out = a & b;

Notes:
- De Morgan's Law :: and X or not(X) = !X or !not(X)
- OR = Xor + !Xor = !(Xor AND !Xor)
- Xor = Xor OR !Xor = (Xor OR !xorendmodule
