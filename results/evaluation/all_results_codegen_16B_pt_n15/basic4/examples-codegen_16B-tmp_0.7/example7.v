// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
assign out = (sel==0) ? a : b;

xnor i_muxSelIn_xnor_muxOut_muxIn_muxSelOut_muxOut : input [1:0] sel,
    i_muxSelIn_xnor_muxOut_muxIn_muxSelOut_muxOut : input [1:0] out,
    muxIn_muxSelOut : output [4:0] muxIn_muxSelOut;
// When sel=0, assign in to muxIn. 
// When sel=1, assign out to muxIn.
assign muxIn_muxSelOut = (sel==0) ? in : muxOut;

always @(posedge clk)
    if (sel==0) muxOut <= a;
    elseendmodule
