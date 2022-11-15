// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @(posedge clk)
begin
  out[sel] <= a[sel];
end


module d={
  input sel:1;
  output reg out:{1'd0; 1'd1; 1'd2; 1'd3};
  always @(posedge clk) pc <= out;
};

reg [3:0] mux_sel, reg [3:0] mux_net;
reg [3:0] net; // mux result
localparam uint4 K = 3; // 8|16|32 bits / a|b
reg [3:0] mux_set, mux_image;
variable unsigned long int arry_one;

// mux_sel = onehot(sel);
// mux_net = xbar-|0|1|2|3;
// net = onehot(mux_endmodule
