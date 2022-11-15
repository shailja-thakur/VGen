// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

module and_gatetb();
reg a;
reg b;
wire out;

and_gate myand( a, b, out );
initial
	begin
	a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
#40;
$stop;
end
endmodule
