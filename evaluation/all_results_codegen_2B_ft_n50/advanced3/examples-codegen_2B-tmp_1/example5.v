// This is a finite state machine that recognizes the sequence 101 on the input signal x. 
module adv_fsm(
input clk,
input reset,
input x,
output z ); 
reg [1:0] present_state, next_state;
parameter IDLE=0, S1=1, S10=2, S101=3;
// output signal z is asserted to 1 when present_state is S101 
// present_state is reset to IDLE when rset is high
// otherwise it is assigned next state
// if present_state is IDLE, next_state is assigned S1 if x is 1, otherwise next_state stays at IDLE
// if present_state is S1, next_state is assigned S10 if x is 0, otherwise next_state stays at IDLE 
// if present_state is S10, next_state is assigned S101 if x is 1, otherwise next_state stays at IDLE 
// if present_state is S101, next_state is assigned IDLE


// for file output and signal assignment
initial begin
	$display("\n\n -------------------------------IDLE- STATE\n -------------\n");
	present_state = IDLE;
	next_state <= #6 IDLE;
end 

always @(posedge clk or posedge reset)
begin
	if(reset)
	begin
	present_state <= #1 IDLE;
	end

	else
	present_state <= #5 next_state;
end
// for file output and signal assignment
always @(-> present_state) begin
	case(present_state)
	IDLE:
	begin
	next_state = x ? S1: IDLE;
	$display("IDLE state");
	$display("\n next state %b", next_state);
	end
	S1: 
	begin
	nextend
end
endmodule
