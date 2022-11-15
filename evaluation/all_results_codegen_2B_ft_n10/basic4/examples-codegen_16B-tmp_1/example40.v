// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
/* Write your code below
mux my_mux 
(
.a(a),
.b(b),
.sel(sel),
.out(out)
);
mux.verilog */
reg [4:0] out;
//when sel = 0 take input a
always @( a, b, sel )
begin : MUX_LOGIC
if ( sel == 1'b0 )
out = a;
else
out = b;
end
//when b = 5'b10101 take input b
always @( sel )
begin : TEST 
if( sel == 1 )
$display("B");
else
$display("A");
end
// when out = 5'b01011 then
always @(out)
begin : TEST_LOGIC
if ( out == 5'b01011 )
$end
endmodule
