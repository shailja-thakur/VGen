// This is an FSM
module abro(
input clk,
input reset,
input a,
input b,
output z );
parameter IDLE = 0,
SA = 1,
SB = 2,
SAB = 3;
reg [1:0] cur_state,next_state;
// The output z is high when 1 is received for signals a and b in any order.
// If cur_state is IDLE and a and b are both high, state changes to SAB
// If cur_state is IDLE, and a is high, state changes to SA
// If cur_state is IDLE, and b is high, state changes to SB
// If cur_state is SA, and b is high, state changes to SAB
// If cur_state is SB, and a is high, state changes to SAB
// If cur_state is SAB, state changes to IDLE
// z is assigned one when cur_state is SAB
reg [1:0] cur_request;

// I am deleting the next two lines here because there will be multiple sources
// for the command lines and read notifications
always begin
    cur_request <= {a,b};
    cur_state <= SAB;
    next_state <= cur_state; 
end

always begin
    if (cur_request )#
    cur_state <= next_state;
end
end


// Abort when cin == 0
always #5 begin
    if (a) begin: wait_for2 #4, !clk
    else begin : wait_for3 #4, !clk
    z <= 1 ;
    next_state <= IDLE;
    wait;
end
end



// If #4 is ready, it sets cur_request to 0; 
module hdlVerChk;
    inputendmodule
