// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
 
always @ (a or b)
	if(a == 1'b1)
	begin
	out = 1'b1;
	end
	else
	if(b == 1'b1)
	begin
	out = 1'b1;
	end
	else
	begin
	out = 1'b0;
	end
endmodule
