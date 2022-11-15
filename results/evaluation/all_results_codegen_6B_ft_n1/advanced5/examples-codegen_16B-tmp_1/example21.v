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
if (reset) begin cur_state <= IDLE; z<=0; end
else begin cur_state <= next_state;z<=1; end
end
always @(a or b or cur_state)
begin
if(cur_state==IDLE)
begin
if(a==1 && b==1)
begin next_state<=SAB; z<=0; end
else if(a==0 && b==0 && cur_state!=cur_state)
begin next_state<=IDLE; z<=0; end
else next_state<=IDLE;
end
else if(cur_state==SA && b==0 && a==0) begin next_state<=IDLE; end
else if(cur_state==SB && a==0 && b==0) begin next_stateend
end
endmodule
