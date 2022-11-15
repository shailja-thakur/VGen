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
// if only a or b is asserted, the state stays put. They also have a case where if both are asserted and the values are equal, then the state stays assignd 1.

always @(posedge clk) begin
cur_state <= next_state;
end

always @(posedge a or posedge b) begin
next_state = IDLE;
case(cur_state)
IDLE: if (a && b) next_state = SAB;
if (a || b) next_state = SAB;
END: next_state = SAB;
SA , SB : next_state = SAB;
END : if (a) next_state = SAB; 
if (b) next_state = SA;

endcase
endmodule
