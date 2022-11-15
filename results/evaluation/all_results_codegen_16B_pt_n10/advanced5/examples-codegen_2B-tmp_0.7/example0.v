// This is an FSM.
module abro(
input clk, reset,  
input a,  b,
output z );
parameter IDLE = 0,
S1 = 1,
S2 = 2,
S3 = 3;
reg [1:0] cur_state,next_state;
//This is an FSM with the output z high when either of the input signals a or b are high irrsepective of their order.
reg [3:0] state;
//Here is the initial state.
initial state = S3;
//This is the transition function.
assign next_state = state;
//This is the output function.
assign z = next_state == state;
//This is the output function.
assign cur_state = state;
begin
next_state <= state;
state <= state;
if ((a == 0 and b == 1) or (a == 1 and b == 0)) {
next_state <= S1;
state <= S1;
}
if ((a == 0 and b == 0) or (a == 1 and b == 1)) {
next_state <= S2;
state <= S2;
}
if ((a == 0 and b == 2) or (a == 2 and b == 0)) {
next_state <= S3;
state <= Send
endmodule
