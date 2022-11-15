// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
reg [3:0] out;
always @(posedge ua,posedge ub) startup 
{ 
  if(ua && ub){
    out <= {((sel=='010'), a), ((sel=='001'), b)}; 
  }
}

endmodule
