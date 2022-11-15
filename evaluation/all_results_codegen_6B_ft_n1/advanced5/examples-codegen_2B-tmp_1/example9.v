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
always @ sched(5 cycle master,S1-S3)
begin
    WHILE (not(clk == 1'b0) and reset != 1'b0)
        wait
    WHILE (reset == 0 and clk==1'b0)
        S1:
        next_state <= S2;
    whilst(not(clk == 1'b0), reset <> 0 or clk==1'b0);
    S1:
    cout << "S1:   z = " << z ) ;
    S1:
    if (cur_state <> next_state)
    {
        cur_state = next_state;
        goto S2;
    }
    S2:
    if (cur_state <> next_state)
    {
        goto S3;
    }
    S2end
endmodule
