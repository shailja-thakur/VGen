// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Whenever the ena input is enabled, the slower speed slow-up counter is updated.

always @ (posedge clk)
begin
if (reset)
q <= 4'd0;
else
case (idle_state)
verilog_nextstate : begin	
	if (~slowena)
q <= 4'd0;
	else if (slowupcount < 4'd9)
	slowupcount <= slowupcount + 
	// decrease the counter if it can only reach 9 because of slow_ena.
	((slowupcount == 4'd9) ? ~slowena : slowupcount);
	else begin
	q <= q + 1'b1;
	// stop when counter expires.
	slowupcount <= 0;
	end
	idle_state <= (q == 4'd9) ? verilog_nextstate : idle_state;
end
end
endmodule
