// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a to b. 
// When sel=3, assign a and b to out.

initial begin   

out = a||b||a||b;
    
// bla is the multiplexed input vector with index 1 and even bit
// bla13 is input vector with index 1 and odd bit
// dac value is the DAC output mapped to multiplexed input one bit
// dac value can be: bla1, bla2, bla3, bla3, or blank
dac minVal(3);
dac maxVal(4);
dac selectVal(3);
dac val;

out = selectVal||minVal||maxVal||(a&dac)||(b&dac);
    
end

endmodule
