// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

// end of module

module and_gate_test_module;

 // declare input and output registers
reg a;
reg b;
reg b_t_1 = 0;
wire out;

// pass the values of the inputs to the module
initial begin
	// give values to the input registers
	a = 0;
	b = 0;
	#10;
	a = 0;
	b = 1;
	#10;
	a = 1;
	b = 0;
	#10;
	a = 1;
	b = 1;
	#10;
	$finish;
end

// create an instance of the module
and_gate t_and_gate(
.a(a),
.b(b),
.out(out)
);

// pass the value of b to the module
always begin
end
endmodule
