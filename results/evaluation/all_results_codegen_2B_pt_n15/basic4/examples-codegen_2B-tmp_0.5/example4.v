// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

wire [4:0] w;

// Each of the inputs is a multiplexed with a number
// from 0 to 3.

always @(*)
begin
    if (sel == 0) w = a;
    if (sel == 1) w = b;
    w = w + 1;
end

endmodule
