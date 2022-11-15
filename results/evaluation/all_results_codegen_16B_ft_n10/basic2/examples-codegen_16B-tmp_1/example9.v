// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
 output out;
 assign out = a & b;

 endmodule
 // This implementation was based on https://www.cs.ucsb.edu/~koc/cs290g/docs/w01/examp6.pdf
// collaboration: 20080326 lovezhu327@sjtu.edu.cn
// team: dlz1101100
// main code

module or_test;
	reg a,b;
	wire out;
	or_gate inst(.a(a),.b(b),.out(out));
	initial begin
	$dumpfile("test.vcd"); 
	$dumpvars(0, or_test); 
	$monitor($time,"%d %d out:%d",$time,a,b,out);
	a=0;b=0;
#3 a=0;b=endmodule
