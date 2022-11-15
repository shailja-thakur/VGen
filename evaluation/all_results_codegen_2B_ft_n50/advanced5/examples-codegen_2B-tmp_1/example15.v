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
// If a is high and b is, then S to SB i.e. S+ -> SB, second state.
// If both are low/high, state remains stays same.
always @(posedge clk or posedge reset)
begin
if (reset) begin
cur_state <= IDLE;
end 
else
cur_state <= next_state;
end
// Output z is asserted 1 or 0 depending on the activity of state SAB.
// Asserted when input a, b is held high and the next input is high or when rst == 1. 
// The neuron will reset to IDLE state whenablohow is asserted.
always @(posedge clk or posedge reset)
begin
if(reset) begin
	z <= 0;
end 
else begin
	// The output is high for each clock cycle.
	z <= (~cur_state[end
end
endmodule
