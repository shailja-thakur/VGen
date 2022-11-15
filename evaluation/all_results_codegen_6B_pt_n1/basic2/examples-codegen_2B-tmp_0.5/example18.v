// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign out = a and b;

// design the module

and_gate a, b, out;


// design the module with a and b

a = 1;
b = 1;
out = 1;

// design the module with a and b

a = 1;
b = 0;
out = 0;

// design the module with a and b

a = 1;
b = 1;
out = 1;

// design the module with a and b

a = 0;
b = 1;
out = 0;

// design the module with a and b

a = 0;
b = 0;
out = 0;
endmodule
