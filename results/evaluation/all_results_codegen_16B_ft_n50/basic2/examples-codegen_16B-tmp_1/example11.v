// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out


assign out=a&&b;*/

// declaring assign statements as lists 

module add_sub( negative , zero , overflow , two_s_comp_out );

	// declare input and output ports for 4 instances of adder modules 
	input negative , zero , overflow; 
	output two_s_comp_out;

	// instantiate two instances of the adder adder1(a,b,cin,s,cout) and
	// assign the output to two_s_comp_out
	// instantiation of the adder adder1(...);
	assign two_s_comp_out = adder1( );

// function that implements the adder

function adder(input a,b,cin);

	begin
	adder=a+b+cin;
	adder[31]=|adder[30:0];
end
endmodule
