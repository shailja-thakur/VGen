// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out. 

 Module Input Output Wires
-------------------
a : a input
b : b input

out : out output

//list of variables declared in module

//list of port types

//list of decored port names

//list of ports to be checked if given a procedural block

//module name and instance name

//comment

//--------------------------------------------------------------------------------
// function/task declaration of implicit nets

generate
if(a==b)
assign out=a;
else
assign out=0;
endgenerate

endmodule
