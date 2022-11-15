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
//The 0 is for the high state and 1 for low state in the FSM.
//The FSM starts in the IDLE state.
always @(*) begin
  if (a) begin:next_state = S1;
  else if (b) begin:next_state = S2;
  else begin:next_state = IDLE;
  if (cur_state != next_state) begin
  begin:cur_state = next_state;
  end
end

//Always-exits FSM based on the register cur_state.
always @(*) begin
  if (cur_state == IDLE) begin:next_state = S1;
  else if (cur_state == S1) begin:next_state = S2;
  else if (cur_state == S2) begin:next_state = S3;
  else begin:nextend
end
end
end
end
end
end
end
end
endmodule
