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
assign z = a ^ b;
always @(posedge clk or negedge reset)
begin
  case cur_state is
    IDLE:
      next_state <= IDLE;
    S1:
      next_state <= S1;
    S2:
      next_state <= S2;
    S3:
      next_state <= S3;
  end
end
//outputs the transition table
module tb_z
  is
    signed int a,b;
    reg [3:0] next_state;
    assign next_state = 0;
    always @(posedge clk or negedge reset)
    begin
      case next_state is
        0:
          next_state <= a;
          a <= b;
        1:
          next_state <= b;
          b <= a;
endmodule
