// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

reg out;
always @(a or b)
	begin
	if (a&b)
	out = 1;
	else
	out = 0;
	end
endmodule