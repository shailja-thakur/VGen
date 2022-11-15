// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @( posedge clk, posedge reset)
	begin
// if reset is active, clear. When complete, q should --x0.089x
// $display("Counter: %d", $time);
	if ( reset == 1'b1 ) begin 
	//counter starts as set to zero.
	q = 4'b0;
	end
	else begin
	if (slowena == 1'b1 && q < 4'b1001 ) begin //count only if ena is on and counter is not maxed out.
	// at each clock ena is always on and counter is incrementing slowly
	if ( clk == 1'b1 ) begin
	//counter is incremented on positive edge of clk, if mask is on.
	q[3] = q[2];
	q[2] = q[1];
	q[1]end
end
end
endmodule
