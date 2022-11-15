// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When a=b and sel=0, assign a to out. 
// When a=b and sel=1, assign b to out.
// When a=b and sel=1, assign a to out. 
// When a=b and sel=0, assign b to out. 
  
out = a;  //
              // For usually generated multiplexers, the "b" input
              // field is sometimes not available, in which case
              // we have to read some data from the C environment.
  
  
// This muxer does not exist on ARCA2 paper. 
// Reading from any signal from the multiplexer will disable the 
// total pins. Other muxers, e.g. ABCNE645M Nudgy5iR2 will work similarly,
// but for different input signals.
endmodule
