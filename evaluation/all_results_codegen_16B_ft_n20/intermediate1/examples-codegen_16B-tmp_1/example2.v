// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
///*
assign sum = a^b;
assign cout = a&b;
//*/
// Use the previous module as a 2input-2output module inside a function evaluation.
function add; // Function declaration with output and input arguments.
	input a, b;
	begin // Adder body
	add = a^b;
	end
endfunction
// Endfunction declaration and use.
// Use the adder inside a procedural block (always block).
always @ (a or b)
begin // Always statement that includes an event (edge sensitive) and processes only when the values of statements change
	$display("[%0t] a =%b b =%b sum =%b carry =%b", $time, a, b, sum, cout); // Operates on the internal variables declared.
end
// End of always statement that processes only when the values of statements changeendmodule
