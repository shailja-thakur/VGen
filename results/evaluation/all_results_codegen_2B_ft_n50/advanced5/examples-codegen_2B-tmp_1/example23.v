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
// if input a and b are both low, SABEL after SA. 
// if input a is high and b is low,SABEL following SA.
// if input a is low, and b high, SB followed after SA. 
always@(posedge clk, posedge reset)
 if(reset)
 cur_state <= IDLE;
 else
 cur_state <= next_state;
always@(cur_state or a or b)
 begin
 case(cur_state)
 IDLE :
 if(a and b) 
 next_state <= SA;
 else
 next_state <= IDLE;
 SA :
 if(a and b) 
 next_state <= SAB; 
 else
 next_state <= SA;
 SAB :
 if(a) 
 next_state <= SABEL; 
 else
 next_state <= SBEL;
end
endmodule
