// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk or posedge reset) //posedge reset often has no effect because q is registered
begin
	if (slowena) begin //also serves as reset
 	if (reset) 
 	q <= 4'b0;
 	else
 	if (q<4'b1001)
	
	q<= q + 1;
	end
end
endmodule
