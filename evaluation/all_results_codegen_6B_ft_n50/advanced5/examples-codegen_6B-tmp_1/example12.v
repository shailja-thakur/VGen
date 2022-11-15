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
// If only a is high, but not b, then the activation rules remain
// the same for previous state to SAB but z is deasserted.
// if only b is high, but not a, then the activation rules change 
// from previous state to SB if the previous state was SA,
// else the previous state stays SB.

always @(posedge clk or posedge reset) begin
	if( reset ) 
	cur_state <= IDLE;
	else begin
	cur_state <= next_state;
	end
end

always @(next_state or a or b) begin
	case( next_state )
	IDLE: if( a&b ) next_state <= SA; else next_state <= IDLE;
	SA: if( a&b ) next_state <= SAB; else next_state <= IDLE;
	SB:end
endmodule
