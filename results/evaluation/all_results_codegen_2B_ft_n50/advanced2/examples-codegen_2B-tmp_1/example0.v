// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Regardless of which edge the clock triggers on,
// the output q will always transition between the values 0 to 9.

// Whenever the ena input is high then do this:
// 1) increment the counter on the same clock edge if the edge state matches q[2:1]
// 2) die if the q value for 2:1 line is 9

always @(posedge clk, posedge reset, posedge slowena)
begin
	if(reset)
	begin
	q<=0;
	end
	else
	begin
	if(slowena)
	begin
	// do the increment defined the cases when slowena is high
	if(q<4 && q>=0)
	begin
	if (slowena && q[3])
	begin
	// Decrement the complement of q[3] until reset is high
	q<=~qend
end
end
end
end
endmodule
