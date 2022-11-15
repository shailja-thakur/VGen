// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// There should be no control port connected to this signal.
wire [2:0] muxsel;
// These should be four to one multiplexes. Signal 1 corresponds to output 1
wire [2:0] active0;
wire [2:0] active1;
// active{0,1} selects whether sel=0 or sel=1 
active100 muxsel_100;
active02 muxsel_02; 
always @* begin
  if(sel==0) {
    out = a; 
    muxsel=0;
  } else {
    out = b;
    muxsel=1;
  }
  muxsel_100 = ~muxsel^(sel_xor==1);
  muxsel_02 = ~muxsel^(sel_xor==1);
end
endmodule
