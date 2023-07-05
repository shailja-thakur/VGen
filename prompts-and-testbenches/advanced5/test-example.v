// This is an FSM 
// It outputs 1 when 1 is received for signals a and b irrespetive of their order, either simultaneously or non-simultaneously.
module abro( input clk, input reset,input a, input b, output z );
parameter IDLE = 0,
SA = 1,
SB = 2,
SAB = 3;
reg [1:0] cur_state,next_state;
// Output z depends only on the state SAB
// The output z is high when cur_state is SAB
// cur_state is reset to IDLE when reset is high. Otherwise, it takes value of next_state.
// Next state generation logic:
// If cur_state is IDLE and a and b are both high, state changes to SAB
// If cur_state is IDLE, and a is high, state changes to SA
// If cur_state is IDLE, and b is high, state changes to SB
// If cur_state is SA, and b is high, state changes to SAB
// If cur_state is SB, and a is high, state changes to SAB
// If cur_state is SAB, state changes to IDLE
// Implements an FSM in Verilog
always @(posedge clk or posedge reset)
begin
if(reset)
cur_state <= IDLE;
else
cur_state <= next_state;
end
always @(cur_state or a or b)
begin
case(cur_state)
IDLE:
begin
if(a && b)
next_state = SAB;
else if(a)
next_state = SA;
else if(b)
next_state = SB;
end
SA:
begin
if(b)
next_state = SAB;
else
next_state = SA;
end
SB:
begin
if(a)
next_state = SAB;
else
next_state = SB;
end
SAB:
begin
next_state = IDLE;
end
default:
next_state = IDLE;
endcase
end
// Output logic:
// Output z is high when cur_state is SAB
assign z = (cur_state == SAB);
endmodule
