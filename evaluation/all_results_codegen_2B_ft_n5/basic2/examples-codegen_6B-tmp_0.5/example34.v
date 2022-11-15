// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out 
 initial 
 begin
 out = a & b;
 end 
 endmodule 



module mux2_1 (
input a,
input b,
input s,
output y);

	assign y = s?a:b;

endmodule
