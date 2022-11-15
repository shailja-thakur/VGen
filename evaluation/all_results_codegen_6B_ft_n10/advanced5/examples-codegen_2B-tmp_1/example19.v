// This is an FSM.
module abro(
input clk, reset,  
input a,  b,
output z );
parameter IDLE = 0,
S1 = 1,
S2 = 2,
S3 = 3;
reg [1:0] cur_state,next_state;
//This is an FSM with the output z high when either of the input signals a or b are high irrsepective of their order.
state state0_0 is
begin
transition POLARITY is z = 1, 
  case(a)
  begin
  if (clk == 0) StateMachineSwitch()
  end
  default
    StateExit();
  end
  case(b)
  begin
  if (clk == 1) StateMachineSwitch()
  end
  default
    StateExit();
  end
end    
state state0 is
begin
transition S1 is a = z, b = 0, clk = 1, next_state = S2, StateMachineSwitch();
default
if a and b == 0
if clk == 0
StateExit()
default
if clk == 1
transition S3 is a = 0, b = z, clk = 0, next_state = S1, StateMachineSwitch();
default
transition CLR_S1 is clendmodule
