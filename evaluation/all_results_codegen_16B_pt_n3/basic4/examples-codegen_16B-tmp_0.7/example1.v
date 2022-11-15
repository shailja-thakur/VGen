// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// Note that it is legal to have sel be a left-over from the
// previous cycle.
always @(posedge clk) begin
    if (sel == 0)
        out <= a;
    else if (sel == 1)
        out <= b;
    else
        out <= 0;
end
endmodule
