// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Increment the result slowly, as it is a value that does NOT have a stable binary representation.

// use a clock **divider**. So now comment out the code for clk1 and make a new clk2. 

always @ (posedge clk) begin
	if (reset)
	begin
	q <= 0;	// need to update q for the design
	end
	if (!reset && slowena == 1'b1 )
	begin
	 if (q == 9) // fast division case specifically for 10 to n
	begin 
	q <= 0;
	end
	else 
	begin
	q<= q + 1'b1; // update q for this clock cycle
	end
	end //end if
	end // always



end
end
endmodule
