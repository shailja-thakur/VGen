// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// At the same time, output the slow-flip-flop output.

always @(posedge clk) 
 begin
	if (reset)
	 begin
	 assign q = 0; 
	 assign slowenq = 0;
	 end
	else
	 if (slowena == 1)
	 begin 
	 assign slowenq = 1;
	 if (q >= 4)
	 begin
	 assign q = 0; 
	 end
	 else
	 begin
	 assign q = q + 1;
	 end
	 end
 end
endmodule
