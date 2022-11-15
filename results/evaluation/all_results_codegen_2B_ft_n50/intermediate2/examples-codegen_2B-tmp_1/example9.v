// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
always @(posedge clk or negedge reset)
begin
	if (!reset) 
	begin
	q = 1;
	end
	else if (q == 12 && &(flying_q))
	begin
	q = 1;
	end
	else if (q == 1 && &(flying_q))
	begin
	q = 12;
	end
	else 
	begin
	q = q + 1;
	end
	// reset the debouncer on a reset
	if (reset) 
	begin
	debouncer <= 0;
	end
	// otherwise if q == 7, only debounce when q == 1
	// debounce happens by pulsing the 720 delay line 7 times away from q
always @ (posedge win_clk, negedge reset)
begin
	if (!reset) flightspeed <= 72end
end
endmodule
