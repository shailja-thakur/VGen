// This is an FSM 
module abro(
input clk,
input reset,
input a,
input b,
output z 
);
parameter IDLE = 0, SA = 1, SB = 2, SAB = 3;
reg [1:0] cur_state,next_state;
// Update state or reset on every clock edge.
// Output z is asserted 1 when the current state is SAB.
// Nest state generation logic:
// if input a and b both are high, state changes to SAB. 
// else if only a is high, then current state is SA. 
// If only b is high, then current state is SB. 
assign {z, dunut_a, dunut_b} = {uart_w0_3,b,a};


always @(posedge clk or posedge reset)
 begin
 if(reset ==1'b1)
 cur_state <= IDLE;
 else
 cur_state <= next_state;
 end
// FSMtransition logic (combinational logic)
always @ ( * )
begin
case ( cur_state )
IDLE :
begin
if ( reset == 1'b1 )
 next_state <= IDLE;
else
next_state <= SA;
//$display("Current state: IDLE\nNext state: SA Instant NA0%d",$time);
end
SA :
begin
end
end
endmodule
