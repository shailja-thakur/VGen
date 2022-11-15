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
//This is a state machine.
always @(posedge clk or negedge reset)
begin
    if (a == 1 or b == 1)
    begin
        cur_state <= IDLE;
        next_state <= IDLE;
    end
    else
    begin
        cur_state <= S1;
        next_state <= S2;
    end
end
// This is an FSM with the output z high when either of the input signals a or b are high irrsepective of their order.
//This is a state machine.
always @(posedge clk or negedge reset)
begin
    if (a == 1)
    begin
        cur_state <= S2;
        next_state <= S3;
    end
    else
    begin
        cur_state <= S3;
        next_state <= S1;end
end
endmodule
