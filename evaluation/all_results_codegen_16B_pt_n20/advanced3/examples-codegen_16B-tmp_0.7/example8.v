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


always @(posedge reset or posedge clk)
begin
	if (reset)
		present_state <= IDLE;
	else
	if (x)
		present_state <= S1;
		else
		present_state <= IDLE;
end

always @(posedge clk or posedge reset)
begin
	next_state <= present_state;
end

reg [1:0] z;

always @(posedge clk or posedge reset)
begin
	if (present_state == S101)
		z <= 1;
	else
		z <= 0;
end
endadv_fsm;



"""


def test_adv_fsm():
    clk = Signal(name="clk")
    reset = ResetSignal(name="reset")
    x = Signal(name="x")
endmodule
