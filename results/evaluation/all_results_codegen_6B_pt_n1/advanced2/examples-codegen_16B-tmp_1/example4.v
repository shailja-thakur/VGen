// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk) begin
	if (~reset) begin
	q <= #1 0;
	end
	else begin
	if (slowena && q <9 && slowena) begin
	q <= #1 q + 1;
	end
	else begin
	q <= #1 q;
	end
	end
end

// On the negative edge of the clock, pass output to the load input

always @(negedge clk) begin
	load <= #1 q;
end

// On the negative edge of the second clock:
// if load is high, pass that value to the long output
// Otherwise, assign 0 to the long output

always @(negedge clk2) begin
	
	if (~load) begin
	long <= #1 0;
	end
	else begin
	long <= #1 load;end
end
endmodule
