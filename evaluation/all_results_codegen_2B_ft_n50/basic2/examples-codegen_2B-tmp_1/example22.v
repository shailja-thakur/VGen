// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
// Use an assign statement
assign out = a & b;

// Use always-block statements
always @(posedge a or posedge b)
begin
 if (a)
// always within an always block activates 
// only when we enter the block
 out = 1;
// When we exit from any block it resets to 0
 // Restore else within an always block
end

// Combinational always, can be nested as needed
// Apply to else as needed.
endmodule
