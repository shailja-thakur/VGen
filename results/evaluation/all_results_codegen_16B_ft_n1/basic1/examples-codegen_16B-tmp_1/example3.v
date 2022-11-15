// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
initial begin
	$monitor(, $time," in = %b , out = %b ",in,out)	
end
endmodule
