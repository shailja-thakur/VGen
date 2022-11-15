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
//The FSM is controlled by the clock signal.
always @(posedge clk)
begin
    cur_state <= next_state;
    next_state <= S1;
    if (a) next_state <= S2;
    if (b) next_state <= S3;
end

//This is a state machine with a single input signal.
//The FSM is controlled by the clock signal.
always @(posedge clk)
begin
    if (a) begin
        if (cur_state == IDLE) begin
            next_state <= S1;
        end
    end
    if (b) begin
        if (cur_state == IDLE) begin
            next_state <= S2;
        end
    end
end

//This is a state machine with two input signals.
//The FSM is controlled by the clock signalendmodule
