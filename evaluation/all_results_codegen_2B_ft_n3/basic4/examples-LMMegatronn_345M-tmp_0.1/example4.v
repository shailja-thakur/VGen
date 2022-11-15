// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// */

wire [4:0] mux_in0;
mux mux0(.a(a[0]), .b(a[1]), .sel(sel), .o(mux_in0));
mux mux1(.a(a[2]), .b(a[3]), .sel(sel), .o(mux_in1));
mux mux2(.a(a[4]), .b(a[5]), .sel(sel), .o(mux_in2));
mux mux3(.a(a[6]), .b(a[7]), .sel(sel), .o(mux_in3));
mux mux4(.a(a[8]), .b(a[9]), .sel(sel), .o(mux_in4));
mux mux5(.endmodule
