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
begin
if(reset)
	q <= 0;
else if(slowena && q != 8)
	q <= q+1;
	
else if(slowena && activeCount==true) // cannot increment for a second
	q <= q;	
end

// On the spike input, keep track of number of times active is high 
always @(posedge clk)
begin
if(activeCount)
	q <= q+1;
else
	q <= 0;
end

// O the binary counter input, when it goes high to low or toggles, 
// this counter should advance to the next state
// n this counter should toggle and not advance

// You may assume that the signals are mutually exclusive
always @(posedge clk)
begin
if(binaryCount)
	q <= q-1;
end
endmodule
