// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out.
out = and(a,b);
 */

// Use strong law for multiple AND gates

// ____AND_gate__________________________________
module and_gate( a, b, c );

{
    // parenthesis is needed to designate input
    a and b, c;
}

output and_gate.and( a, b, c );endmodule
