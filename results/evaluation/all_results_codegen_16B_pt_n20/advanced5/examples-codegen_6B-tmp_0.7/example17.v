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

//In the "abro" state, an input rise in parallel with the current state will set the next state to "S3".
//In the "S1" state, an input rise in parallel with the current state will set the next state to "S2".
//In the "S2" state, an input rise in parallel with the current state will set the next state to "S3".

//In the "S3" state, an input rise in parallel with the current state will reset the next state to "IDLE".

always @(posedge clk)
begin
    cur_state <= next_state;
end

always @(posedge reset)
begin
    next_state <= S3;
end

always @(posedge a)
begin
    next_state <= S2;
end

always @(posedge b)
begin
    next_end
endmodule
