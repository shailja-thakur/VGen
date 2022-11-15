// Design a Moore state machine with two states 0 and 1, one input in, and one output out. Reset state is 0.
module simple_fsm(clk, reset, in, out);
input clk;
input reset;
input in;
output out;
wire out;
reg present_state, next_state;
// In state 0, if in=1, stay in state 0. In state 0, if in=0, go to state 1
// In state 1, if in=1, stay in state 1. In state 1, if in=0, go to state 0
// out=1 in state 0 and out=0 in state 1
always @(posedge clk, posedge reset) begin
	if (~reset) begin
		next_state <= 0; present_state <= 0; out <= 0;
	end else begin
		// Resynchronize the FSM and the pipeline
		if ((present_state = next_state) != 0) begin
			// Block FSM in state 1 if there is some in task aganist
			next_state <= present_state;
		end else begin
			// There is no in task against, go to state 0
			next_state <= 0;
		end
		
		// Afterwards, begin behavior based on present_state
		switch (present_state)
		{
			case 0: // State 0
				
				// Define the behaviour of this FSM state if there is an out task again
				if (out) begin
					// Assign input to present_stateend
end
end
endmodule
