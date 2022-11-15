// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
essonbot creates an AND diagram of an AND gate
 stands in for the "ation" input
// This is the AND gate
output out; 
input a, b; 
assign out = a & b;

module empty_ca(Q, reset, clock1);
input reset, clock1;
output reg Q;

always@(posedge clock1)
begin
	Q=0;
	
	end
endmodule
