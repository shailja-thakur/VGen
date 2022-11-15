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
// z is assigned zero when cur_state is other than SAB
unsigned long loops;
assign z = cur_state[0] == 1;
assign cur_state = next_state;
  always @(posedge clk or posedge reset)
        begin
        if (reset) begin
        next_state <= IDLE;
        end else begin
        case (a)
        1'b0 : next_state <= SA; end
        1'b1 : next_state <= SB; end
        case (b)
        1'b0 : next_state <= SB; end
        1'b1 : next_state <= SAB; end
        default: next_state <= IDLE;
        end
        end
endabro_tb;
macro abro_latch:
        latch begin
        case (a)
        1'endmodule
