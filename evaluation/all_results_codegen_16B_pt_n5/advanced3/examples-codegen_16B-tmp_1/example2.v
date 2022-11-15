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


always @(posedge clk) begin 

// if clk is high, present_state is assigned next_state 
// if clk is low, present_state is assigned present_state
begin  
        present_state <= next_state; 
end 

always @(posedge clk or posedge reset) begin 

// If rset is high and clk was high, valhereset_state is assigned IDLE, if clk just went high 
// present_state is assigned IDLE. 
// x is not updated, val represents the present_state carried into next_state. 
  next_state <= valhereset_state; 
end 
end
endmodule
