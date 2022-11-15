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
always @ (
clk,
reset )
begin
    next_state = IDLE;
    if (a && b) begin next_state = SAB;
    else if (a) begin next_state = SA;
    else if (b) begin next_state = SB;
    assert next_state < 4;
    always @ (
        a,
        b,
        next_state_a,
        next_state_b)
        begin
            switch (next_state) begin
            case SA: next_state_a = 1;
            case SB: next_state_b = 1;
            default: next_state = IDLE; end
        end
    end
endif
end

module connect(
input a,
input b,
output out);

connect(
a,
b,
out_port(1,1));
end
endmodule
