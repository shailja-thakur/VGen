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
//We do not need to check the input a and b to make sure the output z is high.

//Every state has a transition function and a state history table.
//The transition function takes the state of the FSM and returns the next state
//The state history table is used to store the previous states of the FSM.
//This is a useful feature of FSM.
signal [1:0] in_1, out_1;
signal [1:0] in_2, out_2;
signal [1:0] in_3, out_3;

//We introduce the following FSM states

initial begin
    cur_state = IDLE;
    next_state = IDLE;
    a = 0;
    b = 0;
    //initialize the state history table to IDLE
    //initialize the next state to IDLE
end
endmodule
