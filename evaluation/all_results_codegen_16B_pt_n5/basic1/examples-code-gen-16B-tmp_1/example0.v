// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
always @(in, 1'b0) 
begin
	#5 out = in;
end
endmodule
