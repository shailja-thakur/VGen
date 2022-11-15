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
reg [1:0] state;
always @(posedge clk)
  begin
    cur_state <= state;
    state <= next_state;
    next_state <= (a == 1) ? S1 : (b == 1) ? S2 : S3;
  end
endmodule
