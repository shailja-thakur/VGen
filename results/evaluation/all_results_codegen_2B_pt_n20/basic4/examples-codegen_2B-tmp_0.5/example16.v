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
        out <= a;
    else
        out <= b;
end

// A module-level statement can be used to assign a
// signal from an input to an output.
module mux2( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

always @(posedge clk)
begin
    if (sel == 0)
        out <= a;
    else
        out <= b;
end

// The following is a design example that shows how to use a
// multiplexer to select between two signals.
module mux3( 
input [4:0] a, bendmodule
