// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always@( posedge clk, posedge reset ) 
begin
	if ( reset ) 
	
	// Do nothing? reserved for another meaning.c
	
	// If input is not high, then set output to 0.
	else if ( !slowena ) // ( slowena ? 9'b0111_1111 : 9'b0 ) 
	begin
	
	// Otherwise if the input is high, increment the value of q.
	q <= ( q == 9 ) ? 9'b0 : q + 1'b1;
	
	end
end
endmodule
