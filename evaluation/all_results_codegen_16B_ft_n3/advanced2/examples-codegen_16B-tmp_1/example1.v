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
	if (reset) begin
	//if block statement amends the code such that the count only increments if slowena is on and reset is high
	q <= 0;
	end
	else begin
	if (slowena) begin
	if (q!=9'd254)
	begin 
	q <= q + 1'b1;
	end
	end
	else begin
	q <= q;
	#0;
	end
	end
	end
endmodule
