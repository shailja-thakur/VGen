// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// When the counter is 1, then q is enable to be decremented.
// When the counter is 0, then q is enable to be incremented.
// Detects slow, large (positive edge) transitions (like ones with time between transition and reset).

always @(posedge clk or posedge reset)
begin 
 if(reset)
 q <= 4'd0;
 else if(slowena) begin
 if(q == 9)
 q <= 4'd0;
 else begin
 if(sdir)
 q <= q - 1;
 else
 q <= q + 1;
 end
end
	
end
endmodule
