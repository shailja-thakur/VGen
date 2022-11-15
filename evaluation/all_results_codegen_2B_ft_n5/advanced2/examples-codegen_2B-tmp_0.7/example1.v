// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk)
 if (reset)
	 q <= 0;
 else
	if (slowena)
	 if (q != 9)
	 q <= q + 1;
 endmodule

module count_slow_tb;

reg clk;
reg slowena;
reg reset;
wire [3:0] q;

count_slow DUT(clk, slowena, reset, q);

initial begin
	clk = 0;
	reset = 0;
	slowena = 0;
	#20 reset = 1;
	#40 slowena = 1;
	#50 slowena = 0;
	#10 slowena = 1;
	//#40;
	#20 $stop;
	
end

always #5 clk = ~clk;

endmodule
