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
reg [7:0] x,y;
reg [7:0] z;
reg [7:0] a_wait;
reg [7:0] b_wait;
reg [7:0] carry_x;
reg [7:0] carry_y;
reg [7:0] carry_z;
reg [17:0] zz;
reg [17:0] zzz;
reg [3:0] zz_count;

initial begin
next_state = IDLE;
cur_state = IDLE;
a_wait = 0;
b_wait = 0;
carry_x = 0;
carry_y = 0;
carry_z = 0;
zz = 0;
zzz = 0;
zz_count = 0;
end

always @(posedge clk)
begin
if (cur_state ==end
endmodule
