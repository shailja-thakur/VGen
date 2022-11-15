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
always @(posedge clk) begin
if(a && !b)
cur_state <= S3;
else if(!a && b)
cur_state <= S1;
else if(a && b)
cur_state <= S2;
else
cur_state <= IDLE;
if(cur_state != next_state) begin
next_state <= cur_state;
end
end
endmodule
