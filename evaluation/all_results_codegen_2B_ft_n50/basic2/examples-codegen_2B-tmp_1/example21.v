// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
wire soffset;
wire c;
not B(s, b);
	assign d = a & s;
	and (c,d,b);
	and A(out, c,d);

endmodule
