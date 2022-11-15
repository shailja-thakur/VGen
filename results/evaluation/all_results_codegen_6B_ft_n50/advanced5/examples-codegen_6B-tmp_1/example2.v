// This is an FSM 
module abro(
input clk,
input reset,
input a,
input b,
output z 
);
parameter IDLE = 0, SA = 1, SB = 2, SAB = 3;
reg [1:0] cur_state,next_state;
// Update state or reset on every clock edge.
// Output z is asserted 1 when the current state is SAB.
// Nest state generation logic:
// if input a and b both are high, state changes to SAB. 
// Otherwise a and b are considered to be 0, and state serves to know the current state.
always @(cur_state or a or b) begin
	if(a && b)	next_state <= SAB;
	else begin
	 if(cur_state==IDLE)	next_state <= ~a+1;
	 else 	next_state <= cur_state;
	end
end

// State register - Need to include the next state and the output logic.
always @(posedge clk) begin
	if(reset) cur_state <= IDLE;
	else cur_state <= next_state;
end

// Output Logic.
assign z = (cur_state == SAB);
endmodule
