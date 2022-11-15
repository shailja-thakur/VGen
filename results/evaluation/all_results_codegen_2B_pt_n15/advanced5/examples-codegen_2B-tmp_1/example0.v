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
wire [N1:0] count;
reg [N1:0] output_bits = z;
// The INITIAL state sets the counter to zero
// The clk signal is internally sourced from core clock
always @(posedge clk)
// If the posedge signals a and b and actually has an "in here" action 
// execute it and update the next_state variable to the new state
// This forms the core of the state machine
if ( ~$counter[0] > 0u && ~$counter[2] > 0u ) 
{
    count++;
    if ( a ) 
    {
        if ( cur_state < NODWNZE ) 
        {
            if ( cur_state == NODWNZE )       cur_state = SEVEN;
            next_state = SAB;
        }
        else if ( cur_state ==endmodule
