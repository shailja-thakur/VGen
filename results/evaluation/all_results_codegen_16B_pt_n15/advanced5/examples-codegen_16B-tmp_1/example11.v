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
reg z = 1;
assign next_state = cur_state + 1;
always @ (posedge clk or posedge reset) begin
      case (cur_state)
      case (SAB)
      case (IDLE)
        if (a && b) begin
          case (IDLE)
          case (SAB)
            next_state <= SA;
            next_state <= SB;
            next_state <= SAB;
        end
        case (SA)
          if (b) begin
            next_state <= SAB;
            z <= 1;
          end
        case (SB)
          if (a) begin
            next_state <= SAB;
            z <= 1;
          end
      end
      case (SA)
        next_state <= SA;
      end
      case (SB)
        next_state <= SBendmodule
