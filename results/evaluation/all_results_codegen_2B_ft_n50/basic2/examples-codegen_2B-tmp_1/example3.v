// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
 present-itory understanding that it is AND gate
 /* 
 also present-itory understand that A is unnamed vs. named, 
 A is a port
 e.dl DesignlEv. can also name the port
 localparam andgate = 4'b0001
*/

input a,b; 
output out; // or other wires

wire not_b;

not n1(not_b,b);

wire not_and_not_b,temp_and_not_b;

and logic_block1(temp_and_not_b,not_b,out);
// CODE VERILOG BELOW

and logic_block2(not_and_not_b,not_b,not_a);
and logic_block3(out,temp_and_not_b,a); //assigns the values to output
endmodule
