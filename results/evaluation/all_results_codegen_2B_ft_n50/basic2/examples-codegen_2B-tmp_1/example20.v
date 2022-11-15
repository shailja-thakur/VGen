// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

parameter N = 16;

reg[N-1:0] a,b;

output[N-1:0] out;

always @*
begin

out = a & b;

end

endmodule
