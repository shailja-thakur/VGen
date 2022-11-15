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
reg [2:0] int_state;
reg [2:0] int_state_old;
reg [2:0] int_state_next;
reg [2:0] int_state_next_old;
reg [2:0] int_state_next_new;
reg [5:0] a_data, b_data, c_data;
reg [5:0] c_data_old;
reg [5:0] c_data_new;
reg [5:0] c_data_new_old;
reg [5:0] c_data_next;
reg [5:0] c_data_next_new;
reg [5:0] c_data_next_new_old;
reg [5:0] c_data_next_old;
reg [5:0] c_data_next_oldendmodule
