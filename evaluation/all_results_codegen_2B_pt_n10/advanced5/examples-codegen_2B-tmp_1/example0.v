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
always begin
    cur_state = IDLE;            // cur_state can be IDLE, SA, SB, SAB
    if a==1 then cur_state=SA;
    if b==1 then cur_state=SB;
    if !cur_state==IDLE and z>0 then  cur_state=SAB;
end
end
"""


class Interconnect(object):
    def __init__(self, pin_mapping, int_mp_mapping):
        self.mappings = pin_mapping, int_mp_mapping
        self.connections = {}

    def connect(self, pin, int_mp):
        assert int_mp in self.mappings
        if pin not in self.connections:
            self.connections[pin] = [int_mp]
        else:
            self.connections[pin].endmodule
