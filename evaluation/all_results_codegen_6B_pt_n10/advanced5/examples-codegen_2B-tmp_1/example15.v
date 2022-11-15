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
{
always @(posedge clk)
    if(cur_state==S3) go();
    if((~a)&&b&&cur_state==idle) {
        next_state=S1;
        enter((cur_state==idle));
    } else if(~b&&a&&cur_state==idle) {
        next_state=S2;
        enter((cur_state==idle));
    } else {
        next_state=S3;
        if(!(a||b))
            next_state=idle;
        exit((cur_state==idle));
    }
}

//Run the state machine until at idle state.
sllc abreg(
input clk, 
pos_nmb a,  pos_nmb b,

actual_out z() );

sllendmodule
