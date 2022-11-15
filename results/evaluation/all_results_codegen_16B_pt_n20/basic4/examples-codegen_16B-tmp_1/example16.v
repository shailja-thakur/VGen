// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign !(a XOR b) to out.
// When sel=3, assign !a to out.
// T_CLK is always clocked. 
(r, asc_in, fb_in, data, sel) 
register (r); begin
case (sel):
#ArraySize (data) = 2;
case (0):
r <= {data[0], data[1]};
endcase
end
endmodule
