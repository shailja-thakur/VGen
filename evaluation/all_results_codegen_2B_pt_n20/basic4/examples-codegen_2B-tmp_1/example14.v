// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
wire [4:0] a_sel, b_sel, out_sel;
initial begin

out_sel <= 0;
out_sel <= b_sel?(a_sel):(b_sel);
end

always @(sel) begin
    out_sel <= 0;
    if (a[4:0]==0x01) out_sel <= 0b11000000 ;
    if (b[4:0]==0x01) out_sel <= 0b10100000 ;
    a_sel <= a[4:0];
    b_sel <= b[4:0];
end

// Get rid of this.
// Out input vector, lines [4:0] of input vector.
cout [4:0] out;
endmodule
