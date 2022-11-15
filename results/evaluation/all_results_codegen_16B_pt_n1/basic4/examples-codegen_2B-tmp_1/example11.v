// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign bitwise-AND result to out. 

always @*
  void test() {
    mux.in[0] = 17;
    mux.in[1] = 18;
    mux.in[2] = 19;
    mux.in[3] = 20;
};
endmodule
