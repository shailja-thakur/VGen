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
initial begin
cur_state = IDLE;
next_state = IDLE;
//This is RISE. You'd ride her in launcher mode or chain mass-info mode but not in normal operating modes.
always @ (P, clk)
begin
next_state = (RISE-1);
w.z = w.a ^ w.b;
end

always @ (reset, P,clk)
begin
next_state = IDLE;
if(clk')		w.z = w.b;
w.a = w.a and not 	w.b;
w.b = w.a \ not;
end

always @ ((A == A'1) and (B == B'1) and (config==1))
begin
next_state = S2;
w.z = (w.a == w.b) ? w.end
end
endmodule
