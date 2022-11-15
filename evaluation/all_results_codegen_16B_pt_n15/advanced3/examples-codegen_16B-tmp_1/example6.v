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


always #( IDLE ) begin 
if (reset == 1) begin
present_state = IDLE;
next_state = IDLE;
else next_state = present_state; //this keeps the present_state alive
end
end


always #( IDLE ) begin 
next_state = (present_state == IDLE) ? S1 : IDLE;
mac_lat_proc( clk, reset, x, present_state, next_state );
end


always #( S1 ) begin 
next_state = (present_state == S1) ? S10 : IDLE;
mac_lat_proc( clk, reset, x, present_state, next_state );
end


always #( S10 ) begin 
next_state = (present_state == S10) ? S101 : IDLE;
mac_lat_proc(end
endmodule
