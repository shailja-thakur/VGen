// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign a and b to out.

always @(*)
begin
    if (sel == 0)
        out[0] = a;
    else if (sel == 1)
        out[1] = b;
    else
        out[2] = a;
    if (sel == 2)
        out[3] = b;
end

// Multiplexer with a clock.
module mux_clk( 
input [4:0] a, b,
input sel,
output [4:0] out );

always @(*)
begin
    if (sel == 0)
        out[0] = a;
    else if (sel == 1)
        out[1] = b;
    else
        out[2] = a;
    if (sel == 2)
        out[end
endmodule
