// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
	always @(posedge clock)
	begin
	if(reset)
	q <= 4'b0;
	else
	begin
	if(slowena && (q!=4'b1001))
	q <= q + 1'b1;
	else
	q <= q;
	end
	end
// On the negative edge, we are conserving q[3]
// On the positive edge, we are catching up. 
// On this edge, only set the high bit if the
// counter has hit 9
	always @(negedge clock)
	begin
	q[3] <= (q ==4'b1001);
	q[2:0] <= q[3:1];
	q[0] <= ((q[3] & ~slowena) | co(slowena, q[0]));
	end

// temporary?endmodule
