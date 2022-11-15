// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    // out = a and b

and_gate( 
    input a, 
    input b, 
    output out ) 
    {
    
    // declare input variables
    
    input a_;
    input b_;
    
    // declare output variable
    
    output out_;
    
    // assign input variables
    
    a_ = a;
    b_ = b;
    
    // assign output variable
    
    out_ = a_ and b_;
    
    // return the output variable
    
    return out_;
    
    }
endmodule
