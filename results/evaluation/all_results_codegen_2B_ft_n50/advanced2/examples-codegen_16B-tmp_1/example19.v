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
begin: CLOCK
	if (reset)
	begin
	//counter clause
	q <= 4'b0;
	end//end of the reset condition. necessary to enable the decrementation.
	else//counter increments only when we see ena is on and q = 9
	begin
	if(slowena && q == 4'd9)
	begin
	q <= 4'b0;
	end
	else
	//counter increments
	begin
	q <= q + 4'h1;
	end
	end
end //CLOCK END

end
end
endmodule
