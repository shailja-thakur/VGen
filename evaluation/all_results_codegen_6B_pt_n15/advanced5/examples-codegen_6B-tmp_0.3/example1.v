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
always @(posedge clk)
begin
    if (next_state == IDLE)
    begin
        // If both a and b are high, output z is high
        if (a == 1 && b == 1)
        begin
            next_state = SAB;
            z = 1;
        end
        // If a is high, output z is high
        else if (a == 1)
        begin
            next_state = SA;
            z = 1;
        end
        // If b is high, output z is high
        else if (b == 1)
        begin
            next_state = SB;
            z = 1;
        end
        // If both a and b are low, output z is low
        else
        begin
            next_state = IDLE;
            z = 0;
        end
    end
end

endmodule
