// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
return out;

// create a module element with the name "mux".
module mux_4bit ( // mux with 4 input bits
input [5:0] in_t,
input [0:0] in_f,
output [5:0] out_t,
output [0:0] out_f );
// If in_f (i.e., 2 to the 15th bit) is 0, assign out_t (i.e., 4 to the 10th bit). 
// Else, assign out_t (i.e., 4 to the 10th bit) and in_t (i.e., 4 to the 2nd to the 10th bit) including clock. 
// If in_f (i.e., 2 to the 15th bit) is 1, assign out_t (i.e., 4 to the 2nd to the 9th bitendmodule
