// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

// Question:
//
// In the verilog code for the counter I need to address two issues:
// 1. If q equals 9 and the ena input is high, must specify a reset value. 
// 2. The reset value controls the reset bit. As such, reset must be aninput to q.

always @ (posedge clk)
 if (reset)
 begin 
 q <= 0;
 end
 else
 if (slowena)
 if (q != 9)
 q <= q + 1;
 else 
 q <= 0;
 
 endmodule // Count_Slow





module d_ff(q, qbar, clk, d);
input clk, d;
output reg q;

output qbar;
assign qbar = ~q;

always @ (posedge clk) 
begin
q <= d;
endendmodule
