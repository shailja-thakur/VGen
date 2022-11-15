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
always @(posedge clk, negedge reset)

// There are some over-all side effects here.
// First, as discussed would things depending on the cycle counter, 
// the FSM would have to register the number of clocks and this number
// would change when side-effects rest after, e.g., synthesizing no input.
// It would be hard to suppress dirtyness in such conditions since the
// cycle counter controls when the non-registered cycles come.  In that
// case, the FSM would cycle level with the stronger input, but would 16 
// additional clocks anyway.
// Second, there is no side-effect with the input that updates this FSM.

// ATTENTION!  When this top module is split into a driver and a FSM
// in user space, it will result in this module getting more control over 
// the driver pattern.  However, since thisendmodule
