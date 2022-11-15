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
//B duplicate input parameters and the next_state output to be outputs pins.
assign z <= b;
always @* begin 
  next_state <= (a&cur_state)<<1 | cur_state
end;
always @* begin
  next_state <= cur_state<<1 | ((!a)&cur_state)<<1 | ((!b)&cur_state) 
end;
always @* begin
  next_state <= cc(!z); 
  a <= a or b;
  cur_state <= S2
end;
always @* begin
  next_state <= S1 
end;

//The state machine runs
always @* begin 
   if (clk and cur_state == S1) 
  cur_state <= S1; 
  while (next_state <= S2) 
  cur_end
endmodule
