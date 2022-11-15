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
//The FSM transitions from IDLE to S1 when a goes high and transitions to S2 when b goes high.
//The FSM transitions from S1 to S2 when a goes low and b goes low.
//The FSM transitions from S2 to S3 when a goes low and b goes high.
//The FSM transitions from S3 to IDLE when a goes high and b goes low.
always @(posedge clk)
begin
    cur_state <= IDLE;
    if (a == 1)
        cur_state <= S1;
    else if (b == 1)
        cur_state <= S2;
    else if (a == 0)
        cur_state <= S3;
    next_state <= cur_state;
end

//This is an FSM.
module abro2(
input clk, reset,  
input a,endmodule
