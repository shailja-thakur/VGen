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
	q <= #`D0 4'b0000;
	else if(slowena) begin
	//q <= #`D1 q + 4'd1; THIS WORKS
	if(q == 10'b101000000000)
	q <= 4'b0000;
	else
	q <= #`D1 q + 4'd1;
	//else
	//q <= #`D1 q;
	end
	end//slowclock
end
endmodule
