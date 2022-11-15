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
//This is in contrast to the other FSM that is more ILLEGAL in this context.
state bsub_state_0 : bsub_state_0_bug {
  reg [8:0] a_reg,b_reg;
  reg [5:0] z_reg;
  always @(posedge clk)
  begin
    z_reg <= z;
    a_reg <= a;
    b_reg <= b;
    if (b_reg[7] == 0)
    begin
      if (a_reg[7] == 0)
      begin
        next_state <= S1;
      end else
      begin
        next_state <= S3;
      end else
      begin
        next_state <= S2;
      end else
      begin
        next_state <= S1;
      end else
      beginend
end
end
endmodule
