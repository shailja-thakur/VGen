// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

reg [3:0] pren;
reg [1:0] flag;
reg almost_full, run_soon;

assign slowena_b = slowena & (~q[3] | reset) & ((~q[0] | reset) | (~q[1] | reset) | q[2] | q[3] | q[4] | q[5] | q[6] | q[7] | q[9]);
always @(posedge clk)
if(reset)
begin
	q <= 'd0;
	pren <= 'd0;
	flag <= 'd0;
	almost_full <= 'b0;
	run_soon <= 'b0;
end 

else if(slowena_b)	//Increment only when the ena input is asserted
begin	
	pren <= q[3end
endmodule
