// This is an FSM
module abro(
input clk,
input reset,
input a,
input b,
output z );
parameter IDLE = 0,
SA = 1,
SB = 2,
SAB = 3;
reg [1:0] cur_state,next_state;
// The output z is high when 1 is received for signals a and b in any order.
// If cur_state is IDLE and a and b are both high, state changes to SAB
// If cur_state is IDLE, and a is high, state changes to SA
// If cur_state is IDLE, and b is high, state changes to SB
// If cur_state is SA, and b is high, state changes to SAB
// If cur_state is SB, and a is high, state changes to SAB
// If cur_state is SAB, state changes to IDLE
// z is assigned one when cur_state is SAB

always @(posedge clk) begin
	if ( event==1 ) begin
		if ( disable_transition ) begin
			// No transition to attempt
		end else begin
			if ( a&&b ) begin
				// New state is SAB
				next_state	<= SAB;
				// Keep x strap off
				cur_state	<= SA;
			end else if ( a ) begin
				// New state is SA
				next_state	<= SA;
				// Enable x strap (but keep it off)
				cur_state	<= IDLE;
			end else if ( b ) begin
				// New state is SB
				next_state	<= SB;
				// Keep x strap off
				cur_state	<= IDLE;
			end else begin
				// Cannot happen
				next_state	<= 0;
end
end
end
end
endmodule
