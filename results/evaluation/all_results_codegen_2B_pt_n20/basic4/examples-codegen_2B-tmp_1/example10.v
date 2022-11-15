// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// when sel=2 (3), assign 0 to out.
// when sel=3 (2), assign 1 to out.
always @(posedge clk) begin
    using out = (sel == 1) ? a : (sel == 2) ? b : 0;
    @(posedge clk) out <= 1;
end

digout mz = x;
`
endmodule
