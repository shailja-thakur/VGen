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
FSM_Z rules;
assign  cur_state = next_state   = IDLE;
wire z_one = ( cur_state == S2 || cur_state == S3 );
AFN
check( a );
execute_rule( A );
rules();
AFN
check( b );
execute_rule( B );
rules();
AFN
check( clk  || z_one );
execute_rule( C );
rules();
//Simulation always ends with vf({105 ,105 ,105 ,105 ,105 ,105 },{105})
assign next_state = S1;
rules();
assign next_state = S2;
rules();
assign next_state = S1;
rules();
assign next_state = S3;
rules();


//This is a couple of counter for how many transitions were generated.
//Whenever clockendmodule
