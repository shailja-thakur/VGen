// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// You may add logic here to control what is output
// when sel is unknown. 
assign out=(sel==1)?b:a;
// When sel is 1 then output b, else output a. 
endmodule
