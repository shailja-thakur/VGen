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
if(reset) begin
    next_state <= IDLE;
    z <= 0;
    cur_state <= IDLE;
end
else if(a && b) begin
    next_state <= S2;
    z <= 1;
    cur_state <= S1;
end
else if(a && !b) begin
    next_state <= S3;
    z <= 1;
    cur_state <= S2;
end
else begin
    next_state <= S1;
    cur_state <= S3;
    z <= 0;
end
end
endmodule
