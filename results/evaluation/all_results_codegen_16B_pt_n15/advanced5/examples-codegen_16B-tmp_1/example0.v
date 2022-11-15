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
reg [1:0] z_state;
always @* begin
    cur_state <= get_state(a, b);
    z_state <= get_next_state(z_state);
end
function get_state(d_a, d_b)
    if (d_a and d_b) return (SB, A);
    if (d_a) return (SA, B);
    if (d_b) return (SB, B);
    return (IDLE, IDLE);
end
function get_next_state( z_state)
    // only z_state is changed by this FSM
    case z_state()
        case 0:case 1: return IDLE;
        case 2: case 3: return A;
        endcase
    end
end
"""
        v.add_module(fsm_module)
endmodule
