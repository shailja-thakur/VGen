// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
assign out = in;
// Using always
always @ (in or out) begin
// execute only when in not equal to 0 or 1
if(in != 2'b00 && in != 2'b11) begin
	assign out = ~in;	// if in = 00, assign out = 11 and if 01, assign 11;
end	
else begin
	assign out = in;
end
end
endmodule
