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
	begin
	
	q <= 4'd0;
	
	end
	
	// If reset is not active, only increment the register
	// if the ena signal is active and the value is less than 9.
	// Note that the case statement is structured this way.
	// If one were to invert the enable signal, another block
	// of statements could be written, but not sure which is better.
	else
	begin
	
	case(slowena)
	
	1'b0:
	begin
	
	q <= 4'd0;
	
	end
	
	1'b1:
	begin
	
	if(q < 4'd9)
	begin
	
	q <= q + 4'd1;
	
	end
	end
end
end
endmodule
