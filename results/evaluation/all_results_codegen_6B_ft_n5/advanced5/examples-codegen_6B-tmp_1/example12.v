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
behavior abro_TB_FSM =
  always( clk.posedge )
    begin
      // Init variable to IDLE
      cur_state <= IDLE;
      // Init next_state to IDLE
      next_state <= IDLE;
      // Set sign/level
      if (a != 1) { abro_output_o <= z; }
      if (b != 1) { abro_output_o <= z; }
      // If current state is SAB, because :1/0
      if (cur_state.eq(SAB)) {
        // Call next state SL
        next_state <= SA;
      }
      // ⁸ (next_state,cur_state) ⁰ ⁭
      abro_next_state(next_state,cur_state)
    end;
// NOTE: Maybe this shouldn'tendmodule
