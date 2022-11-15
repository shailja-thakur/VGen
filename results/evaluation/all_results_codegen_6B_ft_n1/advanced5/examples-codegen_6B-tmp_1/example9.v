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
ensure main_loop:
carry out:
  cur_state <= next_state;
  begin
    dbg_line:
    a <= z ? 1'b1:1'b0;
    b <= z ? 1'b1:1'b0;
  end
  case SA:
    next_state = next_state + 1'b1;
    clk <= 1'b1 & reset;
  endcase
  case SB:
    next_state = next_state + 1'b1;
    clk <= 1'b1 & reset;
  endcase
  case SAB:
    next_state = IDLE;
    clk <= 1'b1 & reset;
    z <= 1'b1;
    clk <= ~a;
  endcase
endfunction

// This is an FSM to implement arbitration betweenendmodule
