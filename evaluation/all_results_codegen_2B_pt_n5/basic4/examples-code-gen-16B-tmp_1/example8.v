// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// Assignment hints:
// 1. You need to write a condition(s) in this module. 
// 2. Condition expressions are not complete designs. 
// You have to add assign statement using them.
// 3. write statements will overwrite out continuously.
// Assign statements only write to out when they are 
// first driven. You may omit the sel=0 case.
// 4. The design should not produce a latch or a buffer.
// The constraint 'negative_edge' makes sure that VHDL 
// tools use 'non-blocking' assignment. I.e., assignments 
// won't take effect until all expressions of the left hand 
// side and right hand side are evaluated. The key 
// difference between 'blocking' and 'non-blocking'
// assigment is that blocking assignments overwrite 
// variables in one clock cycle and non-blocking assignments 
//endmodule
