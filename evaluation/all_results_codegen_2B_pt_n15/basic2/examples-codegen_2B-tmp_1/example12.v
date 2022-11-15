// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out.

module r_and_gate(
    input a, 
    input b, 
    output out );

    // Design the XOR logic block for an OR gate. 

module or_gate( 
    input a, 
    input b, 
    output out );

    // assign the AND of a and 0x3 to out

function main()
{
  and_gate(a,b,out);
  or_gate(a,0x4,out);
  r_and_gate(a,0x3,out);
  out.in(a);
}endmodule
