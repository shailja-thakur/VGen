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
// z is assigned zero when cur_state is nothing that isn't SAB
initial begin
if(reset) next_state = IDLE;
else if(a==1) next_state = SA;
else if(b==1) next_state = SB;
else next_state = SAB;
cur_state = next_state;
end

// E clock and SMBUS monstrosity
clk_var clock;
smbus_var smbus_req;
clk_rise ( clk )
smbus_rise ( smbus_req ).clk_nb = a;
smbus_rise ( smbus_req ).smbus_req = b;
data_out( z ).clk_nb = reset;
data_out( z ).smbus_req = clock;

// S port AB transition
ab_rise ( a, bendmodule
