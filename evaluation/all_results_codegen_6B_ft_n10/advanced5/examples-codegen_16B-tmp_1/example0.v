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
assign z = (cur_state == SAB);
// This gate is created in each case to move to the desired state
// Note: state transitions are asynchronous.
always @(posedge clk,negedge reset)
begin
if(!reset)
cur_state <= IDLE; // Default values
else begin
cur_state <= next_state;
end
end
// This logic assigns the next state as described above
always @(cur_state,a,b)
begin
case(cur_state)
IDLE:
begin 
if(a == 0 && b == 0)
next_state = IDLE; 
else if (a == 1 && b == 0) 
next_state = SA; // When only a is 1
else if (a == 0 && b == 1)
next_state = SB; // Only b is 1
else 
next_end
end
endmodule
