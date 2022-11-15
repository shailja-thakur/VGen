// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

always @(posedge clk)
begin
    if (sel == 0)
        out[0] = a;
    else
        out[0] = b;
end

// The following is the same as the above, except that the
// multiplexer is inverted.
module mux_inv( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

always @(posedge clk)
begin
    if (sel == 0)
        out[0] = b;
    else
        out[0] = a;
end

// The following is the same as the above, except that the
// multiplexer is inverted.
module mux_inv_invendmodule
