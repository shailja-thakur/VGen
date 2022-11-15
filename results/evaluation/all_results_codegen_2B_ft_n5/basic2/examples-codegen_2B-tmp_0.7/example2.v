// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
output out;
reg out;
always @(*)
begin 
if(a == 1'b1 && b == 1'b1)
out = 1'b1;
else
out = 1'b0;
end

endmodule
