// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

assign out = a & b;


// always block is a keyword in Verilog which is used to 
// describe the sequence of statements that are always 
// executed.

always @ (a, b) 
begin

// a and b are the inputs that are 
// supplied to the always block.

// The keyword begin is used to start a block. 
// It is optional.

out = a & b;

end

endmodule
