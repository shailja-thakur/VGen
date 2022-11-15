// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
assign out = (sel==1) ? b : a;


void currdnsample( int working_a, int req ) {
  // When requsting the next sample
  // in the input port "a" port (port C),
  // the given bit is transfered to port"a". 
  ch_3_din = (chan_sel==3) ? req : a; 
  ch_2_din = (chan_sel==2) ? req : a; 
  ch_1_din = req; 
  // Increment the timer on port"a". 
  a = a + 1;
}

always @(posedge clk)
begin

  int adder_a_en;
  int i;
  block bcount = 0;
  int chan_sel = idata;
  
  //end
endmodule
