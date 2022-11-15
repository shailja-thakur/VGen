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


// enabling the fsm with enable[present_state]
assign z = enable[present_state];

// combinational logic for combination of present state final output and next state,
// if the x doesn't matter i.e the software receiving input constant the present state and next
// generated spicific output as 0
// if the x matters, perform a combinational logic based on present state and next state as doesn't
// generate any paralell statement only as input and current state information
always @*
begin
case(present_state) // case is case x is 0 or 1, 1 because this machine is symbol toggle
IDLE : if(x)
begin
next_state = S1;
end
else
begin
next_state = IDLE;
end
S1 : if(~x)
begin
next_state = S10;
end
else
begin
next_end
end
endmodule
