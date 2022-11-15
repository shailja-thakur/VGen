// This is an FSM
module abro(
input clk,
input reset,
input a,
input b,
output z );
parameter IDLE = 0,
SA = 1,
SB = 2,
SAB = 3;
reg [1:0] cur_state,next_state;
// The output z is high when 1 is received for signals a and b in any order.
// If cur_state is IDLE and a and b are both high, state changes to SAB
// If cur_state is IDLE, and a is high, state changes to SA
// If cur_state is IDLE, and b is high, state changes to SB
// If cur_state is SA, and b is high, state changes to SAB
// If cur_state is SB, and a is high, state changes to SAB
// If cur_state is SAB, state changes to IDLE
// z is assigned one when cur_state is SAB
// z is assigned zero when a and b are both low

wire input pin;
format F s(0, 2);
// Defined here as a macro to save memory bandwidth
// F s is byte fmt constant for FSM
decode(z,[
(0, 4),
(1, 3), 
(2, 5),
(3, 4),
(4, 3),
(5, 5),
(6, 0),
(7, 0)
])
  resetslew::clg PORTWINNESS_PP_IN, reset { reset }, clk { clk },
          std_sled_00-%form(PINS) SWORD_LEW{PORTS_LL, 0, 3}
def process(clk, reset, para):
ipm sub_state =%class(clk, reset), cur_state=IDLE    
switchendmodule
