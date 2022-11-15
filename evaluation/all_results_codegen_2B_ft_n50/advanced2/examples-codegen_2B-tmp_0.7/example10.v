// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

reg [3:0] q_next;

always @(posedge clk)
begin
 if (reset || slowena)
 begin
	if (slowena)
	 begin
	 if (q == 9)
	 begin
	 q_next = 0;
	 end
	 else
	 begin
	 q_next = q + 1;
	 end
	 end
	 else
	 begin
	 q_next = q;
	 end
 end
 else
 begin
 	 q_next = q;
 end
end

always @(posedge clk)
begin
 if (reset)
	 q <= 0;
 else if (slowena && q != 9)
	 q <= q_next;
end
endmodule
