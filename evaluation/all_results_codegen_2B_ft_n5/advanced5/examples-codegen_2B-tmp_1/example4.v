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
// if only b is high, change to SA.
// if only a is high, change to SB.
always@(posedge clk)
 if (reset)
 cur_state <= IDLE;
 else
 cur_state <= next_state;
 always@(*)
 case(cur_state)
 IDLE : if(a && b)
 next_state<=SA;
 else if(a && ~b)
 next_state<=SB;
 else if(~a && b)
 next_state<=SA; 
 else if(b)
 next_state<=IDLE;
 default : next_state<=IDLE;
 endcase
 always@(*)
 if (cur_state==SA)
 z<=(b);
 else if(cur_state==SB)
 z<=(~a);
 endmodule
 // JIG application with go button and resetendmodule
