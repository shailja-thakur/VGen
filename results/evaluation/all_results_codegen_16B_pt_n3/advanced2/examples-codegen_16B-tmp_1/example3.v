// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @ (posedge clk) 
begin
	
	if (reset)
	begin
	
	q <= 4'0;
	end
	
	else 
	begin
	
	q <= ena && q < 4'd9 ? q + 1'b1 : 4'b0;

	end

end 

// Design the enable input ena. Whenever q is low, ena should be 1.
// Whenever any other condition occurs, such as whenever q is high, ena should
// be 0.

assign ena = q==4'd0 | q==4'd1 | q==4'd2 | q==4'd3;

endmodule
