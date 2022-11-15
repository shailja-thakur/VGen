// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

and_gate proc( 
    input a, 
    input b, 
    output out 
    ) {
  	a <= a;
    b <= b;
	this->out <= a && b;
    
}



endmodule
