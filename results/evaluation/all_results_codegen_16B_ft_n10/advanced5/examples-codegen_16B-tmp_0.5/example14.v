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
//The FSM transitions according to the following rules:
//S1 -> S2 -> S3 -> IDLE -> S1 -> S2 -> S3 -> IDLE -> S1 -> S2 -> S3 -> IDLE -> S1 -> S2 -> S3 -> IDLE
always @(posedge clk or negedge reset)
begin
    if(next_state == IDLE) begin
        next_state = S1;
        cur_state = next_state;
    end
    else if(next_state == S1) begin
        next_state = S2;
        cur_state = next_state;
    end
    else if(next_state == S2) begin
        next_state = S3;
        cur_state = next_state;
    end
    else if(next_state == S3) begin
        next_state = IDend
end
endmodule
