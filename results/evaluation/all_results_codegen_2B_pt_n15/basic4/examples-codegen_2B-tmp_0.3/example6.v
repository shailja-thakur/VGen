// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

always @(*)
begin
    if (sel == 0)
        out[4:0] = a;
    else
        out[4:0] = b;
end

// Design a 2-to-1 demultiplexer.
module demux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

always @(*)
begin
    if (sel == 0)
        out[4:0] = a;
    else
        out[4:0] = b;
end

// Design a 2-to-1 multiplexer.
module mux2( 
input [4:0] a, b,
input sel,
output [endmodule
