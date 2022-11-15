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


always@(reset or present_state or x)
begin
assign z = 0;

case({reset, present_state[1], present_state[0]})
3'b000:{next_state,z}; // if reset is high and instrcnt is at zero, subsequent outputs become zero, 
3'b001:next_state = S1; // depending on what is waiting on the inputs. (S1 or S10, depending on input x)
3'b010:next_state = S1;
3'b011:next_state = IDLE; // jump to the idle state -> if INVALID or interrup, jump to the idle state (this state gets outputted until all checks have passed or x is asserted high.)
3'b100:next_state = IDLE;
3'b101:next_state = IDLE; // if x is highend
endmodule
