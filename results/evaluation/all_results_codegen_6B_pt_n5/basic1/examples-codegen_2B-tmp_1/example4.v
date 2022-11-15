// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
assign out = in;

// Print statements to monitor assignments
initial begin
	in = 1'b0;
	#1;
	$display("<< Starting the monitor >>");
	#1;
	in = 1'b1;
	#1;
	$display("<< Assigning the output value >>");
	$display("<< out is %b >>", out);
	#1;
end 

endmodule
