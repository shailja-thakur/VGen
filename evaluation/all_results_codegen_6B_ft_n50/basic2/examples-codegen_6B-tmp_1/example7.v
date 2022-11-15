// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out.
 n0(out , ( a & b)); 
 endmodule 
// Design a module that implements an AND gate
module and_gate_tb();
reg a;
reg b;
wire out;

and_gate myand(.a(a),.b(b),.out(out));

initial
	begin
	a=1'b0;
	b=1'b0;
	#100;
	a=1'b0;
	b=1'b1;
	#100;
	a=1'b1;
	b=1'b0;
	#100;
	a=1'b1;
	b=1'b1;
	#100;

	$finish;
	end
	endmodule
