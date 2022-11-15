// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign a and b to out.

always @(*) begin
    if (sel == 0)
        out[3:0] = a;
    else if (sel == 1)
        out[3:0] = b;
    else if (sel == 2)
        out[3:0] = a;
    out[4:0] = b;
end

// Multiplexer with a delay.
module delay_mux(
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign a and b to out.

always @(*) begin
    if (sel == 0)
        out[3:0end
endmodule
