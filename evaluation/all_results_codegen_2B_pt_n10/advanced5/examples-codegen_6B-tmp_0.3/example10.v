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
//This is a state machine with the states S1, S2, and S3.
//The transitions are as follows:
//S1->S2: a==1 && b==1
//S2->S3: a==1 && b==0
//S3->S1: a==0 && b==1
//S3->S2: a==0 && b==0
always @(posedge clk or negedge reset)
begin
  if(next_state == IDLE)
  begin
    if(a == 1 && b == 1)
    begin
      next_state = S1;
    end
    else if(a == 1 && b == 0)
    begin
      next_state = S2;
    end
    else if(a == 0 && b == 1)
    begin
      next_state = S3;
    endend
end
endmodule
