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
// if either input is high, sampled at IDLE.
 
always @(posedge clk)
 if (reset)
cur_state <= IDLE; 
else 
 begin
 case ({a,b}) 
 2'b10 : cur_state <= SA; 
 2'b11 : cur_state <= IDLE; 
 2'b00 : cur_state <= IDLE; 
 default : cur_state <= IDLE; 
 endcase
end
// Update state on every clock edge.
always @(cur_state)
case (cur_state) 
IDLE : next_state <= a; 
SA : next_state <= b; 
END : next_state <= IDLE; 
default: next_state <= IDLE;
endcase
// Output state becomes z.
assign z = (cur_state == SAB);
endmodule
