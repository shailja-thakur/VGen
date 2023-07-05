// Create a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    assign out = a && b;
    
endmodule