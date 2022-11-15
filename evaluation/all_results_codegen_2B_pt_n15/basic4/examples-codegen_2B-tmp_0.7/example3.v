// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a and b to out. 

// The following design example computes 'a' when sel is 0,
// 'b' when sel is 1, and 'a' and 'b' when sel is 2.

wire [4:0] out1, out2;

mux mux1( sel, a, b, out1, out2 );

always @ (sel) begin
    if (sel==0) out1 = a; 
    else if (sel==1) out2 = b; 
    else if (sel==2) out1 = a, out2 = b; 
end

endmodule
