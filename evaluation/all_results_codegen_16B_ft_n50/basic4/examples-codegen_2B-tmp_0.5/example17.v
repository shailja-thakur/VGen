// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a to out. 
// When sel=3, assign b to out. 

wire [4:0] c;

assign a[4:0] = a[4:0] & ~b[4:0];
assign b[4:0] = b[4:0] & ~a[4:0];
assign c[4:0] = a[4:0] & b[4:0];

always @(*)
begin
    if (sel == 1)
        c = a;
    else if (sel == 2)
        c = b;
    else if (sel == 3)
        c = a;
    else
        c = b;
end

mux a, b, c;

endmodule
