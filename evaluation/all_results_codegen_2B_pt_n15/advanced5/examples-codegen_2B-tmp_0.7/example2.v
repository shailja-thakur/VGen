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
reg [1:0] last_state;
assign cur_state = ( reset ? 0 : ( ~a ? 1 : ~b ? 2 : ~reset ? 3 : cur_state ) );
always @(*)
begin
    last_state = ~cur_state;
end
always @(*)
begin
    if ( cur_state == IDLE )
    begin
        next_state = SAB;
    end
    else if ( cur_state == SA )
    begin
        next_state = SB;
    end
    else if ( cur_state == SB )
    begin
        next_state = SAB;
    end
    else
    begin
        next_state = IDLE;
    end
    if ( resets_rst_i && ( reset == 1 ) )
    begin
        next_state = IDLE;
        last_stateend
end
endmodule
