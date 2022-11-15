// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Whenever the ena input is low, q stays in its current location.

always @(posedge clk or posedge reset)
 begin 
	if (reset)
	begin
	 q<=4'b0000;
	end
	else
	begin
	 if (~slowena&q<=4'b10)
	 q<=q+1;
	 end
 end

endmodule
