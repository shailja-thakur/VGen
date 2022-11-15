// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// The rest of the logic for q deasserted is handled by the .SYNC trigger box below the 
// logic. This is due to 120MHz SYSCLK being too fast to slice through the 10 bit register used to track q. 
always @(`proclinew)
begin
 case(`proclinew)
 4'd0: if (reset) q<=4'd0;
 4'd1: if (slowena & (~reset)) q<=q+1'b1;
 4'd2: q<=q;
 4'd3: q<=q+1'b1;
 4'd4: q<=q+1'b1;
 4'd5: q<=q+1'b1;
 4'd6: q<=q+1'b1;
 4'd7: q<=q+1'b1;
 4end
endmodule
