// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
reg temp;
always @(sel or a or b)
begin
temp=sel&b[0] | ~sel&a[0];

out[0]=temp;

temp=sel&b[1] | ~sel&a[1];

out[1]=temp;

temp=sel&b[2] | ~sel&a[2];

out[2]=temp;

temp=sel&b[3] | ~sel&a[3];
out[3]=temp;

temp=sel&b[4] | ~sel&a[4];
out[4]=temp;
end
endmodule
