// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
//Create a wire for each input and output of the AND gate
wire a_and_b; 

assign a_and_b = a & b;
//Create a wire for each input and output of the NOT gate
wire a_not;

not_gate not_gate(
.a(a), 
.out(a_not));

and_gate and_gate(
.a(a_and_b), 
.b(a_not), 
.out(out));

endmodule
