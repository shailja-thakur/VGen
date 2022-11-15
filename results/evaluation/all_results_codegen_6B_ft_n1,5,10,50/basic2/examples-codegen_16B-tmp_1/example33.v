// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
assign out = a & b;

// initial 
// always 
if (a == 1 && b == 0) 
begin 
assert( out == 1) 
end 
else if (a == 0 && b == 1)
begin 
assert( out == 0) 
end 
else 
begin 
assert( out == x) 
end 
// initialend 
// onlyfor demo 
 always @ (a, b) 
 begin 
assert ((a == 0 && b == 0) || (a == 1 && b == 1 ))
end 
 // o, e

endmodule
