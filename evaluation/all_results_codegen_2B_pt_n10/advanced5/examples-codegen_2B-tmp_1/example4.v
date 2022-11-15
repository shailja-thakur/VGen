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
signal out_z;

always begin
cur_state = clk == '0' ? 0 : 1;
next_state = 0;
if((input 'a) == 1) && a == false) next_state = SAB; 
if((input 'b) == 1) && b == false) next_state = SAB; 
if((input 'a) == 1) && (input 'b) == 1) next_state = IDLE; 
if(clk == '0') { 
  z = true; 
  next_state = cur_state;
}
end

always begin
out_z <= z;
end

function delay show fsm_trace
  clk, a = input '0';
  b = input '1';
initial begin 
  process(cur_state); 
end
endpgm;
endmodule
