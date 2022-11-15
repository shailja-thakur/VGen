// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
to specify the zero value of out, it is given below
assign out = 0;
 
//when a or b are both 0, then AND is unnecessary
//which can be implemented by 
//assigning 0 to both and and or outputs

//if a or b are both 1, then AND'ed output is equal to a xor b
//so, using xor operator gives same thing
xor gate_1(andoutputa, a, b), gate_2(andoutputb, a, b);
 
// the use of xor gates gives output out, as specified above
xor gate_3(out, andoutputa, andoutputb);
 
 


endmodule
