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


// The next part of code will have to be written by the students
// Write Incomplete combinational equation in all assignment statements

always @ (reset or present_state or x)
begin
   // specify the next state in incomplete equation
    case(reset)
    1'b0: next_state = present_state; 
    1'b1: next_state = IDLE;
    default: next_state = IDLE; // safety routine
    endcase
end

wire sx = x = 1'b1;
wire zz = z = 1'b1;

assign z = zz;
// machine description starts from next line

assign z = (present_state[0] ==1)|
(present_state[1] ==1)| 
(present_state[1] ==1)|
(present_state[2] ==1);endmodule
